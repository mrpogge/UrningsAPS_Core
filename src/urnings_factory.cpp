#include <iostream>
#include <tuple>
#include <random>
#include <map>
#include <cmath>
#include <algorithm>

// Assembling the functions from the different sources
#include "model.hpp"
#include "paired_update.hpp"
#include "item_selection.hpp"


// defining the functional component types for type safety
typedef double (*expected_outcome_type)(int,int,int,int,int);
typedef double (*metropolis_urnings_type)(int,int,int,int,int,int);
typedef std::tuple<int, int> (*update_rule_type)(int,int,int,int,int,int);
typedef double (*metropolis_urnings_type)(int,int,int,int,int,int);
typedef double (*metropolis_adapt_type)(double, int, int, int , int,std::vector<int>&, int, double, double);
typedef void (*paired_update_function_type)(int, int, int, int, std::vector<int>, std::vector<int>);
typedef std::tuple<int, double> (*item_selection_type)(int, int, std::vector<int>, int, int, double, double);

//forward declaration
int simulated_outcome(double expected_outcome);
double true_outcome(double pi_i, double pi_j);


std::vector<std::vector<double>> urningsSimFactory(
    std::vector<int>& r_pl,
    std::vector<int>& r_it,
    int n_i,
    int n_j,
    std::vector<double>& pi_pl,
    std::vector<double>& pi_it,
    int ngames,
    item_selection_type item_selection,
    expected_outcome_type expected_outcome,
    update_rule_type update_rule,
    metropolis_urnings_type metropolis_urnings,
    metropolis_adapt_type metropolis_adapt,
    paired_update_function_type paired_update,
    double mu,
    double sigma,
    bool omit_message){

        //setting up outcome and the queue
        int nplayers = r_pl.size();
        int nitems = r_it.size();
        std::vector<std::vector<double>> outcome(nplayers, std::vector<double>(ngames));
        std::vector<int> queue(nitems, 0);

        for(int ng; ng < ngames; ++ng){
            if(ng % 50 == 0 & omit_message == false){
                std::cout << "Est. game: " << ng << std::endl ;
            }

            for(int pl; pl < nplayers; ++pl){
                //selecting player item pair
                int R_i = r_pl[pl];
                double pi_i = pi_pl[pl];
                
                std::tuple<int, double> item_props = item_selection(nitems, R_i, r_it, n_i, n_j, mu, sigma);
                int it = std::get<0>(item_props);
                double prob_select = std::get<1>(item_props); 
                
                int R_j = r_it[it];
                double pi_j = pi_it[it];

                //calculating the true and expected outcome
                double p_ij = true_outcome(pi_i, pi_j);
                int X_ij = simulated_outcome(p_ij);

                double p_hat = expected_outcome(R_i, R_j, n_i, n_j, X_ij);
                int X_hat = simulated_outcome(p_hat);

                //update step
                std::tuple<int, int> proposal = update_rule(R_i, R_j, n_i, n_j, X_ij, X_hat);
                int R_i_prop = std::get<0>(proposal);
                int R_j_prop = std::get<1>(proposal); 

                //metropolis step
                if(R_j_prop != R_j){
                    double adapt_correction = metropolis_adapt(prob_select, n_i, n_j, R_i_prop, R_j_prop, r_it, it, mu, sigma);
                    double urnings_correction = metropolis_urnings(R_i, R_j, n_i, n_j, R_i_prop, R_j_prop);

                    double alpha = std::min(1.0, adapt_correction*urnings_correction);
                    std::random_device rd;
                    std::mt19937 gen(rd());
                    std::uniform_real_distribution<double> uniform_dist(0.0, 1.0);
                    double u = uniform_dist(gen);

                    if(u < alpha){
                        r_pl[pl] = R_i_prop;
                        paired_update(R_j, R_j_prop, n_j, it, r_it, queue);
                    }
                }
            
                outcome[pl][ng] = r_pl[pl] / n_i;

            }
        }

        return outcome;
    }

std::vector<std::vector<double>> urningsSimFactory(
    std::vector<int>& r_pl,
    std::vector<int>& r_it,
    int n_i,
    int n_j,
    std::vector<double>& pi_pl,
    std::vector<std::vector<double>>& pi_it,
    int ngames,
    item_selection_type item_selection,
    expected_outcome_type expected_outcome,
    update_rule_type update_rule,
    metropolis_urnings_type metropolis_urnings,
    metropolis_adapt_type metropolis_adapt,
    paired_update_function_type paired_update,
    double mu,
    double sigma,
    bool omit_message){

        //setting up outcome and the queue
        int nplayers = r_pl.size();
        int nitems = r_it.size();
        std::vector<std::vector<double>> outcome(nplayers, std::vector<double>(ngames));
        std::vector<int> queue(nitems, 0);

        for(int ng; ng < ngames; ++ng){
            if(ng % 50 == 0 & omit_message == false){
                std::cout << "Est. game: " << ng << std::endl ;
            }

            for(int pl; pl < nplayers; ++pl){
                //selecting player item pair
                int R_i = r_pl[pl];
                double pi_i = pi_pl[pl];
                
                std::tuple<int, double> item_props = item_selection(nitems, R_i, r_it, n_i, n_j, mu, sigma);
                int it = std::get<0>(item_props);
                double prob_select = std::get<1>(item_props); 
                
                int R_j = r_it[it];
                double pi_j = pi_it[it][ng];

                //calculating the true and expected outcome
                double p_ij = true_outcome(pi_i, pi_j);
                int X_ij = simulated_outcome(p_ij);

                double p_hat = expected_outcome(R_i, R_j, n_i, n_j, X_ij);
                int X_hat = simulated_outcome(p_hat);

                //update step
                std::tuple<int, int> proposal = update_rule(R_i, R_j, n_i, n_j, X_ij, X_hat);
                int R_i_prop = std::get<0>(proposal);
                int R_j_prop = std::get<1>(proposal); 

                //metropolis step
                if(R_j_prop != R_j){
                    double adapt_correction = metropolis_adapt(prob_select, n_i, n_j, R_i_prop, R_j_prop, r_it, it, mu, sigma);
                    double urnings_correction = metropolis_urnings(R_i, R_j, n_i, n_j, R_i_prop, R_j_prop);

                    double alpha = std::min(1.0, adapt_correction*urnings_correction);
                    std::random_device rd;
                    std::mt19937 gen(rd());
                    std::uniform_real_distribution<double> uniform_dist(0.0, 1.0);
                    double u = uniform_dist(gen);

                    if(u < alpha){
                        r_pl[pl] = R_i_prop;
                        paired_update(R_j, R_j_prop, n_j, it, r_it, queue);
                    }
                }
            
                outcome[pl][ng] = r_pl[pl] / n_i;

            }
        }

        return outcome;
    }