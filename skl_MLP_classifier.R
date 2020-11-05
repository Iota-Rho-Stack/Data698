# load env
require(reticulate)
use_virtualenv(virtualenv = "r-reticulate")

# Build In House MLP Classifier.
skl_MLP_Classifier <- function(data_X_y = import("sklearn.datasets")$load_iris(return_X_y = T),
                          hidden_layer_sizes= c(100),
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
  sk.nn <- import("sklearn.neural_network")
  sk.nn.classifier <- sk.nn$MLPClassifier()
  # Override Default
  sk.nn.classifier$activation <- activation
  sk.nn.classifier$batch_size <- batch_size
  sk.nn.classifier$beta_1 <- beta_1
  sk.nn.classifier$beta_2 <- beta_2
  sk.nn.classifier$early_stopping <- early_stopping
  sk.nn.classifier$epsilon <- epsilon
  sk.nn.classifier$hidden_layer_sizes <- as.integer(hidden_layer_sizes)
  sk.nn.classifier$learning_rate <- learning_rate
  sk.nn.classifier$learning_rate_init <- learning_rate_init
  sk.nn.classifier$power_t <- power_t
  sk.nn.classifier$max_iter <- as.integer(max_iter)
  sk.nn.classifier$shuffle <- shuffle
  sk.nn.classifier$random_state <- random_state
  sk.nn.classifier$tol <- tol
  sk.nn.classifier$verbose <- verbose
  sk.nn.classifier$warm_start <- warm_start
  sk.nn.classifier$momentum <- momentum
  sk.nn.classifier$nesterovs_momentum <- nesterovs_momentum
  sk.nn.classifier$validation_fraction <- validation_fraction
  sk.nn.classifier$n_iter_no_change <- as.integer(n_iter_no_change)
  sk.nn.classifier$solver <- solver
  sk.nn.classifier$max_fun <- as.integer(max_fun)
  # Build Model
  model <- sk.nn.classifier$fit(X = data_X_y[[1]], y = import("numpy")$ravel(data_X_y[[2]]))
  return(model)
}
