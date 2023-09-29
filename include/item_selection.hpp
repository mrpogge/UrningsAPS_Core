#ifdef ITEM_SELECTION_HPP
#define ITEM_SELECTION_HPP

std::tuple<int, double> uniform(int n_items, int R_i, std::vector<int> r_it, int n_i, int n_j, double mu = 0, double sigma = 0.5);
std::tuple<int, double> normal(int n_items, int R_i, std::vector<int>& r_it_ref, int n_i, int n_j, double mu = 0, double sigma = 0.5);
double n_adapt_corrector(double prob_select, int n_i, int n_j, int R_i_prop, int R_j_prop,std::vector<int>& r_it, int it, double mu, double sigma);
double adapt_corrector(double prob_select, int n_i, int n_j, int R_i_prop, int R_j_prop,std::vector<int>& r_it, int it, double mu, double sigma);


#endif