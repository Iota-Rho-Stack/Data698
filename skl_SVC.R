# load env
require(reticulate)
use_virtualenv(virtualenv = "r-reticulate")

# Declare In House SVC Function

skl_SVC <- function(data_X_y = import("sklearn.datasets")$load_iris(return_X_y = T),
                    C= 1.0,
                    kernel='rbf',
                    degree=3,
                    gamma='scale',
                    coef0=0,
                    shrinking= T, 
                    probability= F, 
                    tol=0.001,
                    cache_size=200, 
                    class_weight= NULL, 
                    verbose=F, 
                    max_iter=-1,
                    decision_function_shape='ovr', 
                    break_ties=F, 
                    random_state= NULL){
  sk.svm <- import("sklearn.svm")
  sk.svm.svc <- sk.svm$SVC()
  # Override Default  
  sk.svm.svc$C <- C
  sk.svm.svc$kernel <- kernel
  sk.svm.svc$degree <- degree
  sk.svm.svc$gamma <- gamma
  sk.svm.svc$coef0 <- coef0
  sk.svm.svc$shrinking <- shrinking
  sk.svm.svc$probability <- probability
  sk.svm.svc$tol <- tol
  sk.svm.svc$cache_size <- cache_size
  sk.svm.svc$class_weight <- class_weight
  sk.svm.svc$verbose <- verbose
  sk.svm.svc$max_iter <- max_iter
  sk.svm.svc$decision_function_shape <- decision_function_shape
  sk.svm.svc$break_ties <- break_ties
  sk.svm.svc$random_state <- random_state
  model <- sk.svm.svc$fit(X = data_X_y[[1]], y = import("numpy")$ravel(data_X_y[[2]]))
  return(model)
}
