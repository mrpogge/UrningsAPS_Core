#include <iostream>
#include <tuple>
#include <random>
#include <map>
#include <cmath>
#include <algorithm>

//connecting the header file to the source code 
#include "model.hpp"


double true_outcome(double pi_i, double pi_j){
    double p_ij = (pi_i * (1-pi_j)) / ((pi_i * (1-pi_j)) + (pi_j * (1-pi_i)));

    return p_ij;
}

double expected_outcome_u1(int R_i, int R_j, int n_i, int n_j, int X_ij = 1){
    double p_hat = 0;
    double R_i_db = static_cast<double>(R_i);
    double R_j_db = static_cast<double>(R_j);
    if (R_i_db/n_i == R_j_db/n_j){
        p_hat = 0.5;

    }

    if (R_i_db/n_i != R_j_db/n_j){
        double num = R_i_db/n_i* (1-R_j_db/n_j);
        double denom = R_i_db/n_i * (1-R_j_db/n_j) + R_j_db/n_j  * (1-R_i_db/n_i);
        p_hat = num / denom;
    }
    return p_hat;
}

double expected_outcome_u2(int R_i, int R_j, int n_i, int n_j, int X_ij){
    int R_i_star = R_i + X_ij;
    int R_j_star = R_j + (1 - X_ij);

    double numerator = (static_cast<double>(R_i_star) / (n_i + 1)) * (1 - (static_cast<double>(R_j_star) / (n_j + 1)));
    double denominator = numerator +  (static_cast<double>(R_j_star) / (n_j + 1)) * (1 - (static_cast<double>(R_i_star) / (n_i + 1)));
    double p_hat = numerator / denominator;
    return p_hat;
}


std::tuple<int, int> updating_u1(int R_i, int R_j, int n_i, int n_j, int X_ij, int X_hat){
    int R_i_prop = R_i + X_ij - X_hat;
    int R_j_prop = R_j + (1-X_ij) - (1-X_hat);

    R_i_prop = R_i_prop > n_i ?  n_i : R_i_prop;
    R_j_prop = R_j_prop > n_j ?  n_j : R_j_prop;
    R_i_prop = R_i_prop < 0 ? 0 : R_i_prop;
    R_j_prop = R_j_prop < 0 ? 0 : R_j_prop;

    return std::make_tuple(R_i_prop, R_j_prop);
}

std::tuple<int, int> updating_u2(int R_i, int R_j, int n_i, int n_j, int X_ij, int X_hat){
    int R_i_prop = R_i + X_ij - X_hat;
    int R_j_prop = R_j + (1-X_ij) - (1-X_hat);
    return std::make_tuple(R_i_prop, R_j_prop);
}

int simulated_outcome(double expected_outcome){
    std::random_device rd;
    std::mt19937 gen(rd());

    std::binomial_distribution<int> binomial(1, expected_outcome);

    return binomial(gen);
}

double metro_correct_u1(int R_i, int R_j, int n_i, int n_j, int R_i_prop, int R_j_prop){
    int old_score = R_i * (n_i - R_j) + (n_j - R_i) * R_j;
    int new_score = R_i_prop * (n_i - R_j_prop) + (n_j - R_i_prop) * R_j_prop;
    double metropolis_correction = static_cast<double>(old_score)/new_score;
    return(metropolis_correction);
}

int metro_correct_u2(int R_i, int R_j, int n_i, int n_j, int R_i_prop, int R_j_prop){
  return(1);
}
