//
// auto-generated by op2.py
//

__constant__ int opDat0_res_calc_stride_OP2CONSTANT;
int opDat0_res_calc_stride_OP2HOST=-1;
__constant__ int direct_res_calc_stride_OP2CONSTANT;
int direct_res_calc_stride_OP2HOST=-1;
//user function
__device__ void res_calc_gpu( const double **x, const double **phim, double *K,
                      double **res, double **none) {
  for (int j = 0; j < 4; j++) {
    for (int k = 0; k < 4; k++) {
      K[(j * 4 + k)*direct_res_calc_stride_OP2CONSTANT] = 0;
    }
  }
  for (int i = 0; i < 4; i++) {
    double det_x_xi = 0;
    double N_x[8];

    double a = 0;
    for (int m = 0; m < 4; m++)
      det_x_xi += Ng2_xi[4 * i + 16 + m] * x[m][1];
    for (int m = 0; m < 4; m++)
      N_x[m] = det_x_xi * Ng2_xi[4 * i + m];

    a = 0;
    for (int m = 0; m < 4; m++)
      a += Ng2_xi[4 * i + m] * x[m][0];
    for (int m = 0; m < 4; m++)
      N_x[4 + m] = a * Ng2_xi[4 * i + 16 + m];

    det_x_xi *= a;

    a = 0;
    for (int m = 0; m < 4; m++)
      a += Ng2_xi[4 * i + m] * x[m][1];
    for (int m = 0; m < 4; m++)
      N_x[m] -= a * Ng2_xi[4 * i + 16 + m];

    double b = 0;
    for (int m = 0; m < 4; m++)
      b += Ng2_xi[4 * i + 16 + m] * x[m][0];
    for (int m = 0; m < 4; m++)
      N_x[4 + m] -= b * Ng2_xi[4 * i + m];

    det_x_xi -= a * b;

    for (int j = 0; j < 8; j++)
      N_x[j] /= det_x_xi;

    double wt1 = wtg2[i] * det_x_xi;


    double u[2] = {0.0, 0.0};
    for (int j = 0; j < 4; j++) {
      u[0] += N_x[j] * phim[j][0];
      u[1] += N_x[4 + j] * phim[j][0];
    }

    double Dk = 1.0 + 0.5 * gm1 * (m2 - (u[0] * u[0] + u[1] * u[1]));
    double rho = pow(Dk, gm1i);
    double rc2 = rho / Dk;

    for (int j = 0; j < 4; j++) {
      res[j][0] += wt1 * rho * (u[0] * N_x[j] + u[1] * N_x[4 + j]);
    }
    for (int j = 0; j < 4; j++) {
      for (int k = 0; k < 4; k++) {
        K[(j * 4 + k)*direct_res_calc_stride_OP2CONSTANT] +=
            wt1 * rho * (N_x[j] * N_x[k] + N_x[4 + j] * N_x[4 + k]) -
            wt1 * rc2 * (u[0] * N_x[j] + u[1] * N_x[4 + j]) *
                (u[0] * N_x[k] + u[1] * N_x[4 + k]);
      }
    }
  }
}

// CUDA kernel function
__global__ void op_cuda_res_calc(
  int optflags,
  const double *__restrict ind_arg0,
  const double *__restrict ind_arg1,
  double *__restrict ind_arg2,
  double *__restrict ind_arg3,
  const int *__restrict opDat0Map,
  double *arg8,
  int start,
  int end,
  int *col_reord,
  int   set_size) {
  int tid = threadIdx.x + blockIdx.x * blockDim.x;
  if(tid + start >= end) return;
  int n = col_reord[tid + start];
  //initialise local variables
  int map0idx = opDat0Map[n + set_size * 0];
  int map1idx = opDat0Map[n + set_size * 1];
  int map2idx = opDat0Map[n + set_size * 2];
  int map3idx = opDat0Map[n + set_size * 3];
  const double* arg0_vec[] = {
     &ind_arg0[2 * map0idx],
     &ind_arg0[2 * map1idx],
     &ind_arg0[2 * map2idx],
     &ind_arg0[2 * map3idx]};
  const double* arg4_vec[] = {
     &ind_arg1[1 * map0idx],
     &ind_arg1[1 * map1idx],
     &ind_arg1[1 * map2idx],
     &ind_arg1[1 * map3idx]};
  double* arg9_vec[] = {
     &ind_arg2[1 * map0idx],
     &ind_arg2[1 * map1idx],
     &ind_arg2[1 * map2idx],
     &ind_arg2[1 * map3idx]};
  double* arg13_vec[] = {
     &ind_arg3[2 * map0idx],
     &ind_arg3[2 * map1idx],
     &ind_arg3[2 * map2idx],
     &ind_arg3[2 * map3idx]};

  //user-supplied kernel call
  res_calc_gpu(arg0_vec,
             arg4_vec,
             arg8+n,
             arg9_vec,
             arg13_vec);
}


//host stub function
void op_par_loop_res_calc(char const *name, op_set set,
  op_arg arg0,
  op_arg arg4,
  op_arg arg8,
  op_arg arg9,
  op_arg arg13){

  int nargs = 17;
  op_arg args[17];

  arg0.idx = 0;
  args[0] = arg0;
  for ( int v=1; v<4; v++ ){
    args[0 + v] = op_arg_dat(arg0.dat, v, arg0.map, 2, "double", OP_READ);
  }

  arg4.idx = 0;
  args[4] = arg4;
  for ( int v=1; v<4; v++ ){
    args[4 + v] = op_arg_dat(arg4.dat, v, arg4.map, 1, "double", OP_READ);
  }

  args[8] = arg8;
  arg9.idx = 0;
  args[9] = arg9;
  for ( int v=1; v<4; v++ ){
    args[9 + v] = op_opt_arg_dat(arg9.opt, arg9.dat, v, arg9.map, 1, "double", OP_RW);
  }

  arg13.idx = 0;
  args[13] = arg13;
  for ( int v=1; v<4; v++ ){
    args[13 + v] = op_opt_arg_dat(arg13.opt, arg13.dat, v, arg13.map, 2, "double", OP_INC);
  }

  int optflags = 0;
  if (args[8].opt) {
    optflags |= 1<<0;
  }
  if (args[9].opt) {
    optflags |= 1<<1;
  }
  if (args[10].opt) {
    optflags |= 1<<1;
  }
  if (args[11].opt) {
    optflags |= 1<<1;
  }
  if (args[12].opt) {
    optflags |= 1<<1;
  }
  if (args[13].opt) {
    optflags |= 1<<2;
  }
  if (args[14].opt) {
    optflags |= 1<<2;
  }
  if (args[15].opt) {
    optflags |= 1<<2;
  }
  if (args[16].opt) {
    optflags |= 1<<2;
  }

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(0);
  op_timers_core(&cpu_t1, &wall_t1);
  OP_kernels[0].name      = name;
  OP_kernels[0].count    += 1;


  int    ninds   = 4;
  int    inds[17] = {0,0,0,0,1,1,1,1,-1,2,2,2,2,3,3,3,3};

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

    op_plan *Plan = op_plan_get_stage(name,set,part_size,nargs,args,ninds,inds,OP_COLOR2);

    if ((OP_kernels[0].count==1) || (opDat0_res_calc_stride_OP2HOST != getSetSizeFromOpArg(&arg0))) {
      opDat0_res_calc_stride_OP2HOST = getSetSizeFromOpArg(&arg0);
      cudaMemcpyToSymbol(opDat0_res_calc_stride_OP2CONSTANT, &opDat0_res_calc_stride_OP2HOST,sizeof(int));
    }
    if ((OP_kernels[0].count==1) || (direct_res_calc_stride_OP2HOST != getSetSizeFromOpArg(&arg8))) {
      direct_res_calc_stride_OP2HOST = getSetSizeFromOpArg(&arg8);
      cudaMemcpyToSymbol(direct_res_calc_stride_OP2CONSTANT,&direct_res_calc_stride_OP2HOST,sizeof(int));
    }
    //execute plan
    for ( int col=0; col<Plan->ncolors; col++ ){
      if (col==Plan->ncolors_core) {
        op_mpi_wait_all_cuda(nargs, args);
      }
      #ifdef OP_BLOCK_SIZE_0
      int nthread = OP_BLOCK_SIZE_0;
      #else
      int nthread = OP_block_size;
      #endif

      int start = Plan->col_offsets[0][col];
      int end = Plan->col_offsets[0][col+1];
      int nblocks = (end - start - 1)/nthread + 1;
      op_cuda_res_calc<<<nblocks,nthread>>>(
      optflags,
      (double *)arg0.data_d,
      (double *)arg4.data_d,
      (double *)arg9.data_d,
      (double *)arg13.data_d,
      arg0.map_data_d,
      (double*)arg8.data_d,
      start,
      end,
      Plan->col_reord,
      set->size+set->exec_size);

    }
    OP_kernels[0].transfer  += Plan->transfer;
    OP_kernels[0].transfer2 += Plan->transfer2;
  }
  op_mpi_set_dirtybit_cuda(nargs, args);
  cutilSafeCall(cudaDeviceSynchronize());
  //update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[0].time     += wall_t2 - wall_t1;
}
