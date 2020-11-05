train_time_logReg <- mean(c(
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10)),
  system.time(skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10))
))
train_time_SVM <- mean(c(
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025)),
  system.time(skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025))
)) 
train_time_KNN <- mean(c(
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5)),
  system.time(skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5))
))
train_time_MLP <- mean(c(
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)),
  system.time(skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800))
))

mean_training_time <- setNames(
  list(
    train_time_logReg,
    train_time_SVM,
    train_time_KNN,
    train_time_MLP),
  c("logReg","svc","knn","mlp")
  )
