# load env
require(reticulate)
use_virtualenv(virtualenv = "r-reticulate")

# Declare In House SKL function

skl_Logistic_Regression <- function(data_X_y = import("sklearn.datasets")$load_iris(return_X_y = T),
                         penalty= 'l2',
                         dual = F,
                         tol = 0.0001,
                         C = 1.0,
                         fit_intercept = T, 
                         intercept_scaling = 1,
                         class_weight = NULL,
                         random_state= NULL,
                         solver='lbfgs',
                         max_iter=100,
                         multi_class='auto',
                         verbose = 0,
                         warm_start= F, 
                         n_jobs= NULL,
                         l1_ratio= NULL){
  sk.lm <- import("sklearn.linear_model")
  sk.lm.log <- sk.lm$LogisticRegression()
  # Override Default  
  sk.lm.log$C <- C
  sk.lm.log$class_weight <- class_weight
  sk.lm.log$dual <- dual
  sk.lm.log$fit_intercept <- fit_intercept
  sk.lm.log$intercept_scaling <- intercept_scaling
  sk.lm.log$l1_ratio <- l1_ratio
  sk.lm.log$max_iter <- max_iter
  sk.lm.log$multi_class <- multi_class
  sk.lm.log$n_jobs <- n_jobs
  sk.lm.log$penalty <- penalty
  sk.lm.log$random_state <- random_state
  sk.lm.log$tol <- tol
  sk.lm.log$warm_start <- warm_start
model <- sk.lm.log$fit(X = data_X_y[[1]], y = import("numpy")$ravel(data_X_y[[2]]))
  return(model)
}
