// binomial_logit model
data {
  int<lower=0> N; // number of exp.
  vector[N] x; // doses
  int n[N]; // Nr. of animals
  int y[N]; // Nr. of death
}
parameters {
  real alpha;
  real beta;
}
model {
  y ~ binomial_logit(n,x*beta+alpha);
}
