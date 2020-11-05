# setup
source("sk_setup.R")

# load base datasets
library(datasets)

# MLP_Regressor - trees by Default.
mlp_Regressor <- function(df = trees,
                          target = "Volume",
                          hidden_layer_sizes= 100,
                          activation='relu',
                          solver='adam',
                          alpha=0.0001,
                          batch_size='auto',
                          learning_rate='constant',
                          learning_rate_init=0.001,
                          power_t=0.5,
                          max_iter=200,
                          shuffle=TRUE,
                          random_state=NULL,
                          tol=0.0001,
                          verbose=FALSE,
                          warm_start=FALSE,
                          momentum=0.9,
                          nesterovs_momentum=TRUE,
                          early_stopping=FALSE,
                          validation_fraction=0.1,
                          beta_1=0.9,
                          beta_2=0.999,
                          epsilon=1e-08,
                          n_iter_no_change=10,
                          max_fun=15000) {
  input_layer <- data.matrix(data.matrix(df[colnames(df) != target]))
  target_layer <- data.matrix(data.matrix(df[colnames(df) == target]))
  library(reticulate)
  use_virtualenv(virtualenv = "r-reticulate")
  sk.nn <- import("sklearn.neural_network")
  regressor <- sk.nn$MLPRegressor()$fit(X = input_layer, y = as.vector(target_layer))
  regressor$activation <- activation
  regressor$alpha <- alpha
  regressor$batch_size <- batch_size
  regressor$beta_1 <- beta_1
  regressor$beta_2 <- beta_2
  regressor$early_stopping <- early_stopping
  regressor$epsilon <- epsilon
  regressor$hidden_layer_sizes <- as.integer(hidden_layer_sizes)
  regressor$learning_rate <- learning_rate
  regressor$learning_rate_init <- learning_rate_init
  regressor$power_t <- power_t
  regressor$max_iter <- as.integer(max_iter)
  regressor$shuffle <- shuffle
  regressor$random_state <- random_state
  regressor$tol <- tol
  regressor$verbose <- verbose
  regressor$warm_start <- FALSE
  regressor$momentum <- momentum
  regressor$nesterovs_momentum
  regressor$validation_fraction <- validation_fraction
  regressor$n_iter_no_change <- as.integer(n_iter_no_change)
  regressor$max_fun <- as.integer(max_fun)
  return(regressor)
}

# Vector of Predicted Values
regressor <- mlp_Regressor(max_iter = 100)
cbind(regressor$predict(data.matrix(trees[colnames(trees) != "Volume"])),trees$Volume)