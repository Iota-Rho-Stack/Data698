source('/cloud/project/skl_LogReg.R', echo=F)
source('/cloud/project/skl_K_Nearest_Neighbors.R', echo=F)
source('/cloud/project/skl_SVC.R', echo=F)
source('/cloud/project/skl_MLP_classifier.R', echo=F)
setNames(
  list(
    skl_Logistic_Regression(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10),
    skl_SVC(data_X_y = source('/cloud/project/data_X_y.R')$value, C = 10, gamma = .025),
    skl_KNN(data_X_y = source('/cloud/project/data_X_y.R')$value, n_neighbors = 5),
    skl_MLP_Classifier(data_X_y = source('/cloud/project/data_X_y.R')$value, hidden_layer_sizes = c(90,2), max_iter = 800)
  ),
  c("logReg","svc","knn","mlp")
)
