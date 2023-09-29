#include <iostream>
#include <tuple>
#include <random>
#include <map>
#include <cmath>
#include <algorithm>


#include "utils.hpp"

double normal_method_helper(int R_i, int R_j, int n_i, int n_j, double mu, double sigma){
    double R_i_db = static_cast<double>(R_i);
    double R_j_db = static_cast<double>(R_j);
    double logit_R_i = std::log((R_i + 1) / (n_i-R_i+1));
    double logit_R_j = std::log((R_j + 1) / (n_j - R_j + 1));
    double prob = std::exp(-(0.5) * std::pow(((logit_R_i - logit_R_j) - mu) / sigma, 2));
    return(prob);
}

std::vector<double> normal_vector_helper(int R_i, std::vector<int>& r_it, int n_i, int n_j, double mu, double sigma){
    double R_i_db = static_cast<double>(R_i);
    std::vector<double> results(r_it.size());
    for(int i = 0; i<r_it.size(); ++i){
        results[i] = normal_method_helper(R_i_db, r_it[i], n_i, n_j, mu, sigma);
    }

    return results;
}

std::vector<double> normalise_vector(std::vector<double>& vec){
    double sum = std::accumulate(vec.begin(), vec.end(), 0.0);
    for(double &element : vec){
        element /= sum;
    }
    return vec;
}