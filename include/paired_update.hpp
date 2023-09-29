#ifdef PAIRED_UPDATE_HPP
#define PAIRED_UPDATE_HPP

void no_paired_update(int R_j, int R_j_prop, int n_j, int it, std::vector<int> r_it, std::vector<int> queue);
void paired_update(int R_j, int R_j_prop, int n_j, int it, std::vector<int>& r_it, std::vector<int>& queue);


#endif