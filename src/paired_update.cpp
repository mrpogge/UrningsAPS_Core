#include <iostream>
#include <tuple>
#include <random>
#include <map>
#include <cmath>
#include <algorithm>
#include "utils.hpp"
#include "paired_update.hpp"

//forward declaration
std::vector<double> normalise_vector(std::vector<double>& vec);

void no_paired_update(int R_j, int R_j_prop, int n_j, int it, std::vector<int> r_it, std::vector<int> queue){
}

void paired_update(int R_j, int R_j_prop, int n_j, int it, std::vector<int>& r_it, std::vector<int>& queue){
   int n_items = queue.size();
   std::vector<double>  P(n_items);
   if(R_j_prop > R_j){
    //check the positions that are -1, they will have an equal probability
    for(int i; i<n_items; ++i){
        P[i] = (queue[i] == -1 & r_it[i] != 0 & i != it) ? 1 : 0; 
    }

    if(std::accumulate(P.begin(), P.end(), 0.0) != 0){
        P = normalise_vector(P);
        std::random_device rd;
        std::mt19937 gen(rd());
        std::discrete_distribution<int> distribution(P.begin(), P.end());

        int it_candidate = distribution(gen);
        r_it[it_candidate] -= 1;
        queue[it_candidate] = 0;
        r_it[it] = R_j_prop;
    }
   } else if(R_j_prop < R_j){
    for(int i; i<n_items; ++i){
        P[i] = queue[i] == 1 & r_it[i] != n_j & i != it ? 1 : 0; 
    }

    if(std::accumulate(P.begin(), P.end(), 0.0) != 0){
        P = normalise_vector(P);
        std::random_device rd;
        std::mt19937 gen(rd());
        std::discrete_distribution<int> distribution(P.begin(), P.end());

        int it_candidate = distribution(gen);
        r_it[it_candidate] += 1;
        queue[it_candidate] = 0;
        r_it[it] = R_j_prop;
    }
   }
}