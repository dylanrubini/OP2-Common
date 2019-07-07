//
// auto-generated by op2.py
//

//user function
__device__ void res_calc_gpu( double *data, int *count) {
  data[0] = 0.0;
  (*count)++;

}

// CUDA kernel function
__global__ void op_cuda_res_calc(
  double *__restrict ind_arg0,
  const int *__restrict opDat0Map,
  int *arg1,
  int    block_offset,
  int   *blkmap,
  int   *offset,
  int   *nelems,
  int   *ncolors,
  int   *colors,
  int   nblocks,
  int   set_size) {
  double arg0_l[4];
  int arg1_l[1];
  for ( int d=0; d<1; d++ ){
    arg1_l[d]=ZERO_int;
  }

  __shared__ int    nelems2, ncolor;
  __shared__ int    nelem, offset_b;

  extern __shared__ char shared[];

  if (blockIdx.x+blockIdx.y*gridDim.x >= nblocks) {
    return;
  }
  if (threadIdx.x==0) {

    //get sizes and shift pointers and direct-mapped data

    int blockId = blkmap[blockIdx.x + blockIdx.y*gridDim.x  + block_offset];

    nelem    = nelems[blockId];
    offset_b = offset[blockId];

    nelems2  = blockDim.x*(1+(nelem-1)/blockDim.x);
    ncolor   = ncolors[blockId];

  }
  __syncthreads(); // make sure all of above completed

  for ( int n=threadIdx.x; n<nelems2; n+=blockDim.x ){
    int col2 = -1;
    int map0idx;
    if (n<nelem) {
      //initialise local variables
      for ( int d=0; d<4; d++ ){
        arg0_l[d] = ZERO_double;
      }
      map0idx = opDat0Map[n + offset_b + set_size * 0];


      //user-supplied kernel call
      res_calc_gpu(arg0_l,
             arg1_l);
      col2 = colors[n+offset_b];
    }

    //store local variables

    for ( int col=0; col<ncolor; col++ ){
      if (col2==col) {
        arg0_l[0] += ind_arg0[0+map0idx*4];
        arg0_l[1] += ind_arg0[1+map0idx*4];
        arg0_l[2] += ind_arg0[2+map0idx*4];
        arg0_l[3] += ind_arg0[3+map0idx*4];
        ind_arg0[0+map0idx*4] = arg0_l[0];
        ind_arg0[1+map0idx*4] = arg0_l[1];
        ind_arg0[2+map0idx*4] = arg0_l[2];
        ind_arg0[3+map0idx*4] = arg0_l[3];
      }
      __syncthreads();
    }
  }

  //global reductions

  for ( int d=0; d<1; d++ ){
    op_reduction<OP_INC>(&arg1[d+blockIdx.x*1],arg1_l[d]);
  }
}


//host stub function
void op_par_loop_res_calc(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1){

  int*arg1h = (int *)arg1.data;
  int nargs = 2;
  op_arg args[2];

  args[0] = arg0;
  args[1] = arg1;

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(0);
  op_timers_core(&cpu_t1, &wall_t1);
  OP_kernels[0].name      = name;
  OP_kernels[0].count    += 1;


  int    ninds   = 1;
  int    inds[2] = {0,-1};

  if (OP_diags>2) {
    printf(" kernel routine with indirection: res_calc\n");
  }

  //get plan
  #ifdef OP_PART_SIZE_0
    int part_size = OP_PART_SIZE_0;
  #else
    int part_size = OP_part_size;
  #endif

  int set_size = op_mpi_halo_exchanges_cuda(set, nargs, args);
  if (set->size > 0) {

    op_plan *Plan = op_plan_get(name,set,part_size,nargs,args,ninds,inds);

    //transfer global reduction data to GPU
    int maxblocks = 0;
    for ( int col=0; col<Plan->ncolors; col++ ){
      maxblocks = MAX(maxblocks,Plan->ncolblk[col]);
    }
    int reduct_bytes = 0;
    int reduct_size  = 0;
    reduct_bytes += ROUND_UP(maxblocks*1*sizeof(int));
    reduct_size   = MAX(reduct_size,sizeof(int));
    reallocReductArrays(reduct_bytes);
    reduct_bytes = 0;
    arg1.data   = OP_reduct_h + reduct_bytes;
    arg1.data_d = OP_reduct_d + reduct_bytes;
    for ( int b=0; b<maxblocks; b++ ){
      for ( int d=0; d<1; d++ ){
        ((int *)arg1.data)[d+b*1] = ZERO_int;
      }
    }
    reduct_bytes += ROUND_UP(maxblocks*1*sizeof(int));
    mvReductArraysToDevice(reduct_bytes);

    //execute plan

    int block_offset = 0;
    for ( int col=0; col<Plan->ncolors; col++ ){
      if (col==Plan->ncolors_core) {
        op_mpi_wait_all_cuda(nargs, args);
      }
      #ifdef OP_BLOCK_SIZE_0
      int nthread = OP_BLOCK_SIZE_0;
      #else
      int nthread = OP_block_size;
      #endif

      dim3 nblocks = dim3(Plan->ncolblk[col] >= (1<<16) ? 65535 : Plan->ncolblk[col],
      Plan->ncolblk[col] >= (1<<16) ? (Plan->ncolblk[col]-1)/65535+1: 1, 1);
      if (Plan->ncolblk[col] > 0) {
        int nshared = reduct_size*nthread;
        op_cuda_res_calc<<<nblocks,nthread,nshared>>>(
        (double *)arg0.data_d,
        arg0.map_data_d,
        (int*)arg1.data_d,
        block_offset,
        Plan->blkmap,
        Plan->offset,
        Plan->nelems,
        Plan->nthrcol,
        Plan->thrcol,
        Plan->ncolblk[col],
        set->size+set->exec_size);

        //transfer global reduction data back to CPU
        if (col == Plan->ncolors_owned-1) {
          mvReductArraysToHost(reduct_bytes);
        }
      }
      block_offset += Plan->ncolblk[col];
    }
    OP_kernels[0].transfer  += Plan->transfer;
    OP_kernels[0].transfer2 += Plan->transfer2;
    for ( int b=0; b<maxblocks; b++ ){
      for ( int d=0; d<1; d++ ){
        arg1h[d] = arg1h[d] + ((int *)arg1.data)[d+b*1];
      }
    }
    arg1.data = (char *)arg1h;
    op_mpi_reduce(&arg1,arg1h);
  }
  op_mpi_set_dirtybit_cuda(nargs, args);
  cutilSafeCall(cudaDeviceSynchronize());
  //update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[0].time     += wall_t2 - wall_t1;
}
