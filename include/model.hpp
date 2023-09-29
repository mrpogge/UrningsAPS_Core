#ifdef MODEL_HPP
#define MODEL_HPP

double true_outcome(double pi_i, double pi_j);
double expected_outcome_u1(int R_i, int R_j, int n_i, int n_j, int X_ij = 1);
double expected_outcome_u2(int R_i, int R_j, int n_i, int n_j, int X_ij);
std::tuple<int, int> updating_u1(int R_i, int R_j, int n_i, int n_j, int X_ij, int X_hat);
std::tuple<int, int> updating_u2(int R_i, int R_j, int n_i, int n_j, int X_ij, int X_hat);
int simulated_outcome(double expected_outcome);
double metro_correct_u1(int R_i, int R_j, int n_i, int n_j, int R_i_prop, int R_j_prop);
int metro_correct_u2(int R_i, int R_j, int n_i, int n_j, int R_i_prop, int R_j_prop);


#endif