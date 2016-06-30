//
// auto-generated by op2.py
//

// user function
#include "update.h"

// host stub function
void op_par_loop_update(char const *name, op_set set, op_arg arg0,
                        op_arg arg1) {

  int nargs = 2;
  op_arg args[2];

  args[0] = arg0;
  args[1] = arg1;

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(1);
  op_timers_core(&cpu_t1, &wall_t1);

  if (OP_diags > 2) {
    printf(" kernel routine w/o indirection:  update");
  }

  int set_size = op_mpi_halo_exchanges(set, nargs, args);

  if (set->size > 0) {

    for (int n = 0; n < set_size; n++) {
      update(&((double *)arg0.data)[4 * n], (int *)arg1.data);
    }
  }

  // combine reduction data
  op_mpi_reduce(&arg1, (int *)arg1.data);
  op_mpi_set_dirtybit(nargs, args);

  // update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[1].name = name;
  OP_kernels[1].count += 1;
  OP_kernels[1].time += wall_t2 - wall_t1;
  OP_kernels[1].transfer += (float)set->size * arg0.size * 2.0f;
}
