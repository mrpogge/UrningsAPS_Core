#ifdef UTILS_HPP
#define UTILS_HPP

double normal_method_helper(int R_i, int R_j, int n_i, int n_j, double mu, double sigma);
std::vector<double> normal_vector_helper(int R_i, std::vector<int>& r_it, int n_i, int n_j, double mu, double sigma);
std::vector<double> normalise_vector(std::vector<double>& vec);

#endif