//
// auto-generated by op2.py
//

__constant__ int direct_save_soln_stride_OP2CONSTANT;
int direct_save_soln_stride_OP2HOST = -1;
// user function
__device__ void save_soln(const float *q, float *qold) {
  for (int n = 0; n < 4; n++)
    qold[n * direct_save_soln_stride_OP2CONSTANT] =
        q[n * direct_save_soln_stride_OP2CONSTANT];
}

// CUDA kernel function
__global__ void op_cuda_save_soln(const float *__restrict arg0, float *arg1,
                                  int set_size) {

  // process set elements
  for (int n = threadIdx.x + blockIdx.x * blockDim.x; n < set_size;
       n += blockDim.x * gridDim.x) {

    // user-supplied kernel call
    save_soln(arg0 + n, arg1 + n);
  }
}

// host stub function
void op_par_loop_save_soln(char const *name, op_set set, op_arg arg0,
                           op_arg arg1) {

  int nargs = 2;
  op_arg args[2];

  args[0] = arg0;
  args[1] = arg1;

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(0);
  op_timers_core(&cpu_t1, &wall_t1);
  OP_kernels[0].name = name;
  OP_kernels[0].count += 1;

  if (OP_diags > 2) {
    printf(" kernel routine w/o indirection:  save_soln");
  }

  op_mpi_halo_exchanges_cuda(set, nargs, args);
  if (set->size > 0) {

    if ((OP_kernels[0].count == 1) ||
        (direct_save_soln_stride_OP2HOST != getSetSizeFromOpArg(&arg0))) {
      direct_save_soln_stride_OP2HOST = getSetSizeFromOpArg(&arg0);
      cudaMemcpyToSymbol(direct_save_soln_stride_OP2CONSTANT,
                         &direct_save_soln_stride_OP2HOST, sizeof(int));
    }
// set CUDA execution parameters
#ifdef OP_BLOCK_SIZE_0
    int nthread = OP_BLOCK_SIZE_0;
#else
    int nthread = OP_block_size;
//  int nthread = 128;
#endif

    int nblocks = 200;

    op_cuda_save_soln<<<nblocks, nthread>>>((float *)arg0.data_d,
                                            (float *)arg1.data_d, set->size);
  }
  op_mpi_set_dirtybit_cuda(nargs, args);
  cutilSafeCall(cudaDeviceSynchronize());
  // update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[0].time += wall_t2 - wall_t1;
  OP_kernels[0].transfer += (float)set->size * arg0.size;
  OP_kernels[0].transfer += (float)set->size * arg1.size;
}
