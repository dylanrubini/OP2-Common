//
// auto-generated by op2.py
//

//user function
#include "../bres_calc.h"

// host stub function
void op_par_loop_bres_calc(char const *name, op_set set,
  op_arg arg0,
  op_arg arg1,
  op_arg arg2,
  op_arg arg3,
  op_arg arg4,
  op_arg arg5){

  int nargs = 6;
  op_arg args[6];

  args[0] = arg0;
  args[1] = arg1;
  args[2] = arg2;
  args[3] = arg3;
  args[4] = arg4;
  args[5] = arg5;

  // initialise timers
  double cpu_t1, cpu_t2, wall_t1, wall_t2;
  op_timing_realloc(3);
  op_timers_core(&cpu_t1, &wall_t1);

  if (OP_diags>2) {
    printf(" kernel routine with indirection: bres_calc\n");
  }

  int set_size = op_mpi_halo_exchanges(set, nargs, args);

  if (set->size >0) {

    op_map prime_map_pbecell = arg4.map;
    op_reversed_map rev_map_pbecell = OP_reversed_map_list[prime_map_pbecell->index];

    if (rev_map_pbecell != NULL ) {
      int prime_map_pbecell_dim = prime_map_pbecell->dim;
      int set_from_size_pbecell = prime_map_pbecell->from->size + prime_map_pbecell->from->exec_size;
      int set_to_size_pbecell = prime_map_pbecell->to->size + prime_map_pbecell->to->exec_size + prime_map_pbecell->to->nonexec_size;

      int required_tmp_incs_size4 = set_from_size_pbecell * prime_map_pbecell_dim * arg4.dat->size;
      if (op_repr_incs[arg4.dat->index].tmp_incs == NULL) {
        op_repr_incs[arg4.dat->index].tmp_incs = (void *)op_malloc(required_tmp_incs_size4);
        op_repr_incs[arg4.dat->index].tmp_incs_size = required_tmp_incs_size4;
      }
      else
      if (op_repr_incs[arg4.dat->index].tmp_incs_size < required_tmp_incs_size4) {
        op_realloc(op_repr_incs[arg4.dat->index].tmp_incs, required_tmp_incs_size4);
        op_repr_incs[arg4.dat->index].tmp_incs_size = required_tmp_incs_size4;
      }
      double *tmp_incs4 = (double *)op_repr_incs[arg4.dat->index].tmp_incs;

      for ( int n=0; n<set_size; n++ ){
        if (n==set->core_size) {
          op_mpi_wait_all(nargs, args);
        }
        int map0idx = arg0.map_data[n * arg0.map->dim + 0];
        int map1idx = arg0.map_data[n * arg0.map->dim + 1];
        int map2idx = arg2.map_data[n * arg2.map->dim + 0];


        for ( int i=0; i<prime_map_pbecell_dim * arg4.dim; i++ ){
          tmp_incs4[i+n*prime_map_pbecell_dim * arg4.dim]=(double)0.0;
        }

        bres_calc(
          &((double*)arg0.data)[2 * map0idx],
          &((double*)arg0.data)[2 * map1idx],
          &((double*)arg2.data)[4 * map2idx],
          &((double*)arg3.data)[1 * map2idx],
          &tmp_incs4[(n*prime_map_pbecell_dim+0)*arg4.dim],
          &((int*)arg5.data)[1 * n]);
      }

      for ( int n=0; n<set_to_size_pbecell; n++ ){
        for ( int i=0; i<rev_map_pbecell->row_start_idx[n+1] - rev_map_pbecell->row_start_idx[n]; i++ ){
          for ( int d=0; d<arg4.dim; d++ ){
            ((double*)arg4.data)[arg4.dim * n + d] += 
              tmp_incs4[rev_map_pbecell->reversed_map[rev_map_pbecell->row_start_idx[n]+i] * arg4.dim + d];
          }
        }
      }
    }
  }

  if (set_size == 0 || set_size == set->core_size) {
    op_mpi_wait_all(nargs, args);
  }
  // combine reduction data
  op_mpi_set_dirtybit(nargs, args);

  // update kernel record
  op_timers_core(&cpu_t2, &wall_t2);
  OP_kernels[3].name      = name;
  OP_kernels[3].count    += 1;
  OP_kernels[3].time     += wall_t2 - wall_t1;
  OP_kernels[3].transfer += (float)set->size * arg0.size;
  OP_kernels[3].transfer += (float)set->size * arg2.size;
  OP_kernels[3].transfer += (float)set->size * arg3.size;
  OP_kernels[3].transfer += (float)set->size * arg4.size * 2.0f;
  OP_kernels[3].transfer += (float)set->size * arg5.size;
  OP_kernels[3].transfer += (float)set->size * arg0.map->dim * 4.0f;
  OP_kernels[3].transfer += (float)set->size * arg2.map->dim * 4.0f;
}
