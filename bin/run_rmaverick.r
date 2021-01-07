library(rmaverick)
library(parallel)

indata = read.table("input_maverick_approach2.str") # Change input file accordingly
myproj <- mavproject()
myproj <- bind_data(myproj, indata,  ID_col = 1, pop_col = 2, ploidy = 2)
cores <- detectCores()
cl <- makeCluster(cores)
myproj


# No Admixture Model
myproj = new_set(myproj, name = "No Admixture", admix_on = FALSE)
myproj

myproj = run_mcmc(myproj, K = 1:8, burnin = 6e3, samples = 3e4, rungs = 20, pb_markdown =  FALSE, cluster = cl)

# Plots
plot_GTI_path(myproj, K = 3)
plot_logevidence_K(myproj)
plot_posterior_K(myproj)
plot_qmatrix(myproj, K = 2:8, divide_ind_on = TRUE)


# Yes Admixture Model

myproj = new_set(myproj, name = "Admixture", admix_on = TRUE, estimate_alpha = TRUE)
myproj
myproj = run_mcmc(myproj, K = 1:8, burnin = 6e3, converge_test = 100, samples = 3e4, rungs = 20, pb_markdown =  FALSE, cluster = cl)


# Plots
plot_GTI_path(myproj, K = 3)
plot_logevidence_K(myproj)
plot_posterior_K(myproj)
plot_qmatrix(myproj, K = 2:8, divide_ind_on = TRUE)
