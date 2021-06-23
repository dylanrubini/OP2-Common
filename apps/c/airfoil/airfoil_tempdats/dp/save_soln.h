inline void save_soln(const double *q, double *qold, double *res) {
  for (int n = 0; n < 4; n++) {
    qold[n] = q[n];
    res[n] = 0.0;
  }
}
