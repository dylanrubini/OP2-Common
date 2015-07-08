//
// auto-generated by op2.py on 2015-07-08 13:57
//

//user function
__device__
inline void res_calc_gpu(const double *x1, const double *x2, const double *q1, const double *q2,
                     const double *adt1, const double *adt2, double *res1, double *res2) {
  double dx,dy,mu, ri, p1,vol1, p2,vol2, f;

  dx = x1[0] - x2[0];
  dy = x1[1] - x2[1];

  ri   = 1.0f/q1[0];
  p1   = gm1*(q1[3]-0.5f*ri*(q1[1]*q1[1]+q1[2]*q1[2]));
  vol1 =  ri*(q1[1]*dy - q1[2]*dx);

  ri   = 1.0f/q2[0];
  p2   = gm1*(q2[3]-0.5f*ri*(q2[1]*q2[1]+q2[2]*q2[2]));
  vol2 =  ri*(q2[1]*dy - q2[2]*dx);

  mu = 0.5f*((*adt1)+(*adt2))*eps;

  f = 0.5f*(vol1* q1[0]         + vol2* q2[0]        ) + mu*(q1[0]-q2[0]);
  res1[0] += f;
  res2[0] -= f;
  f = 0.5f*(vol1* q1[1] + p1*dy + vol2* q2[1] + p2*dy) + mu*(q1[1]-q2[1]);
  res1[1] += f;
  res2[1] -= f;
  f = 0.5f*(vol1* q1[2] - p1*dx + vol2* q2[2] - p2*dx) + mu*(q1[2]-q2[2]);
  res1[2] += f;
  res2[2] -= f;
  f = 0.5f*(vol1*(q1[3]+p1)     + vol2*(q2[3]+p2)    ) + mu*(q1[3]-q2[3]);
  res1[3] += f;
  res2[3] -= f;
}


// CUDA kernel function
__global__ void op_cuda_res_calc(
  const double *__restrict ind_arg0,
  const double *__restrict ind_arg1,
  const double *__restrict ind_arg2,
  double *__restrict ind_arg3,
  const int *__restrict opDat0Map,
  const int *__restrict opDat2Map,
  int    block_offset,
  int   *blkmap,
  int   *offset,
  int   *nelems,
  int   *ncolors,
  int   *colors,
  int   nblocks,
  int   set_size) {
  double arg6_l[4];
  double arg7_l[4];

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
  for ( int n=threadIdx.x; n<nelems2; n = n+=blockDim.x ){
    int col2 = -1;
    int map0idx;
    int map1idx;
    int map2idx;
    int map3idx;
    if (n<nelem) {
      //initialise local variables
      for ( int d=0; d<4; d++ ){
        arg6_l[d] = ZERO_double;
      }
      for ( int d=0; d<4; d++ ){
        arg7_l[d] = ZERO_double;
      }
      map0idx = opDat0Map[n + offset_b + set_size * 0];
      map1idx = opDat0Map[n + offset_b + set_size * 1];
      map2idx = opDat2Map[n + offset_b + set_size * 0];
      map3idx = opDat2Map[n + offset_b + set_size * 1];

      //user-supplied kernel call
      res_calc_gpu(ind_arg0+map0idx*2,
             ind_arg0+map1idx*2,
             ind_arg1+map2idx*4,
             ind_arg1+map3idx*4,
             ind_arg2+map2idx*1,
             ind_arg2+map3idx*1,
             arg6_l,
             arg7_l);
      col2 = colors[n+offset_b];
    }

    //store local variables

    for ( int col=0; col<ncolor; col++ ){
      if (col2==col) {
        arg6_l[0] += ind_arg3[0+map2idx*4];
        arg6_l[1] += ind_arg3[1+map2idx*4];
        arg6_l[2] += ind_arg3[2+map2idx*4];
        arg6_l[3] += ind_arg3[3+map2idx*4];
        arg7_l[0] += ind_arg3[0+map3idx*4];
        arg7_l[1] += ind_arg3[1+map3idx*4];
        arg7_l[2] += ind_arg3[2+map3idx*4];
        arg7_l[3] += ind_arg3[3+map3idx*4];
        ind_arg3[0+map2idx*4] = arg6_l[0];
        ind_arg3[1+map2idx*4] = arg6_l[1];
        ind_arg3[2+map2idx*4] = arg6_l[2];
        ind_arg3[3+map2idx*4] = arg6_l[3];
        ind_arg3[0+map3idx*4] = arg7_l[0];
        ind_arg3[1+map3idx*4] = arg7_l[1];
        ind_arg3[2+map3idx*4] = arg7_l[2];
        ind_arg3[3+map3idx*4] = arg7_l[3];
      }
      __syncthreads();
    }
  }
}


//GPU host stub function
void op_par_loop_res_calc_gpu(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1,
  op_arg arg2,
  op_arg arg3,
  op_arg arg4,
  op_arg arg5,
  op_arg arg6,
  op_arg arg7){

  int nargs = 8;
  op_arg args[8];

  args[0] = arg0;
  args[1] = arg1;
  args[2] = arg2;
  args[3] = arg3;
  args[4] = arg4;
  args[5] = arg5;
  args[6] = arg6;
  args[7] = arg7;

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(2);
  op_timers_core(&cpu_t1, &wall_t1);
  OP_kernels[2].name      = name;
  OP_kernels[2].count    += 1;
  if (OP_kernels[2].count==1) op_register_strides();


  int    ninds   = 4;
  int    inds[8] = {0,0,1,1,2,2,3,3};

  if (OP_diags>2) {
    printf(" kernel routine with indirection: res_calc\n");
  }

  //get plan
  #ifdef OP_PART_SIZE_2
    int part_size = OP_PART_SIZE_2;
  #else
    int part_size = OP_part_size;
  #endif

  int set_size = op_mpi_halo_exchanges_cuda(set, nargs, args);
  if (set->size > 0) {

    op_plan *Plan = op_plan_get(name,set,part_size,nargs,args,ninds,inds);

    //execute plan

    int block_offset = 0;
    for ( int col=0; col<Plan->ncolors; col++ ){
      if (col==Plan->ncolors_core) {
        op_mpi_wait_all_cuda(nargs, args);
      }
      #ifdef OP_BLOCK_SIZE_2
      int nthread = OP_BLOCK_SIZE_2;
      #else
      int nthread = OP_block_size;
      #endif

      dim3 nblocks = dim3(Plan->ncolblk[col] >= (1<<16) ? 65535 : Plan->ncolblk[col],
      Plan->ncolblk[col] >= (1<<16) ? (Plan->ncolblk[col]-1)/65535+1: 1, 1);
      if (Plan->ncolblk[col] > 0) {
        op_cuda_res_calc<<<nblocks,nthread>>>(
        (double *)arg0.data_d,
        (double *)arg2.data_d,
        (double *)arg4.data_d,
        (double *)arg6.data_d,
        arg0.map_data_d,
        arg2.map_data_d,
        block_offset,
        Plan->blkmap,
        Plan->offset,
        Plan->nelems,
        Plan->nthrcol,
        Plan->thrcol,
        Plan->ncolblk[col],
        set->size+set->exec_size);

      }
      block_offset += Plan->ncolblk[col];
    }
    OP_kernels[2].transfer  += Plan->transfer;
    OP_kernels[2].transfer2 += Plan->transfer2;
  }
  op_mpi_set_dirtybit_cuda(nargs, args);
  cutilSafeCall(cudaDeviceSynchronize());
  //update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[2].time     += wall_t2 - wall_t1;
}

void op_par_loop_res_calc_cpu(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1,
  op_arg arg2,
  op_arg arg3,
  op_arg arg4,
  op_arg arg5,
  op_arg arg6,
  op_arg arg7);


//GPU host stub function
#if OP_HYBRID_GPU
void op_par_loop_res_calc(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1,
  op_arg arg2,
  op_arg arg3,
  op_arg arg4,
  op_arg arg5,
  op_arg arg6,
  op_arg arg7){

  if (OP_hybrid_gpu) {
    op_par_loop_res_calc_gpu(name, set,
      arg0,
      arg1,
      arg2,
      arg3,
      arg4,
      arg5,
      arg6,
      arg7);

    }else{
    op_par_loop_res_calc_cpu(name, set,
      arg0,
      arg1,
      arg2,
      arg3,
      arg4,
      arg5,
      arg6,
      arg7);

  }
}
#else
void op_par_loop_res_calc(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1,
  op_arg arg2,
  op_arg arg3,
  op_arg arg4,
  op_arg arg5,
  op_arg arg6,
  op_arg arg7){

  op_par_loop_res_calc_gpu(name, set,
    arg0,
    arg1,
    arg2,
    arg3,
    arg4,
    arg5,
    arg6,
    arg7);

  }
#endif //OP_HYBRID_GPU
