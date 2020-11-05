# load env
require(reticulate)
use_virtualenv(virtualenv = "r-reticulate")

# Declare In House KNN Function

skl_KNN <- function(data_X_y = import("sklearn.datasets")$load_iris(return_X_y = T),
                    n_neighbors=5,
                    weight='uniform',
                    algorithm='auto',
                    leaf_size=30,
                    p=2,
                    metric='minkowski',
                    metric_params= NULL, 
                    n_jobs= NULL){
  sk.neighbors <- import("sklearn.neighbors")
  sk.neighbors.knn <- sk.neighbors$KNeighborsClassifier()
  # Override Default  
  sk.neighbors.knn$n_neighbors <- as.integer(n_neighbors)
  sk.neighbors.knn$weights <- weight
  sk.neighbors.knn$algorithm <- algorithm
  sk.neighbors.knn$leaf_size <- leaf_size
  sk.neighbors.knn$metric <- metric
  sk.neighbors.knn$metric_params <- metric_params
  sk.neighbors.knn$n_jobs <- NULL
  model <- sk.neighbors.knn$fit(X = data_X_y[[1]], y = import("numpy")$ravel(data_X_y[[2]]))
  return(model)
}
