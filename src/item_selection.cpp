#include <iostream>
#include <tuple>
#include <random>
#include <map>
#include <cmath>
#include <algorithm>
#include "item_selection.hpp"
#include "utils.hpp"


//forward declaration
double normal_method_helper(int R_i, int R_j, int n_i, int n_j, double mu, double sigma);
std::vector<double> normal_vector_helper(int R_i, std::vector<int>& r_it, int n_i, int n_j, double mu, double sigma);
std::vector<double> normalise_vector(std::vector<double>& vec);

std::tuple<int, double> uniform(int n_items, int R_i, std::vector<int> r_it, int n_i, int n_j, double mu = 0, double sigma = 0.5){
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> dist(0, n_items - 1);
    return std::make_tuple(dist(gen), 1/n_items);
}



std::tuple<int, double> normal(int n_items, int R_i, std::vector<int>& r_it_ref, int n_i, int n_j, double mu = 0, double sigma = 0.5){
    std::vector<double> p_select = normal_vector_helper(R_i, r_it_ref, n_i, n_j, mu, sigma);
    normalise_vector(p_select);

    std::random_device rd;
    std::mt19937 gen(rd());
    std::discrete_distribution<int> distribution(p_select.begin(), p_select.end());

    int it = distribution(gen);

    return std::make_tuple(it, p_select[it]);
}

double n_adapt_corrector(double prob_select, int n_i, int n_j, int R_i_prop, int R_j_prop,std::vector<int>& r_it, int it, double mu, double sigma){
    double corrector = 1;
    return corrector;
}

double adapt_corrector(double prob_select, int n_i, int n_j, int R_i_prop, int R_j_prop,std::vector<int>& r_it, int it, double mu, double sigma){
    double prop_prob_un = normal_method_helper(R_i_prop, R_j_prop, n_i, n_j, mu, sigma);
    std::vector<int> r_it_prop = r_it;
    r_it_prop[it] = R_j_prop;
    std::vector<int>& r_it_prop_ref = r_it_prop;
    std::vector<double> prop_prob_vec = normal_vector_helper(R_i_prop, r_it_prop_ref, n_i, n_j, mu, sigma);

    double prop_prob_sum = std::accumulate(prop_prob_vec.begin(), prop_prob_vec.end(), 0.0);
    double prop_prob = prop_prob_un / prop_prob_sum;
    
    return prop_prob / prob_select;
}
