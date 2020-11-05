confusion_list <- source('/cloud/project/confusion_matrix_build.R')$value
data.frame(
  Logistic_Regression = c(as.vector(confusion_list$logreg$overall)[1],
                          as.vector(confusion_list$logreg$byClass)[1],
                          as.vector(confusion_list$logreg$byClass)[2],
                          as.vector(confusion_list$logreg$byClass)[5])
  /test_data_partition2_mean_training_time$logReg
  ,
  SVM = c(as.vector(confusion_list$svc$overall)[1],
                          as.vector(confusion_list$svc$byClass)[1],
                          as.vector(confusion_list$svc$byClass)[2],
                          as.vector(confusion_list$svc$byClass)[5])
  /test_data_partition2_mean_training_time$svc
  ,
  KNN = c(as.vector(confusion_list$knn$overall)[1],
          as.vector(confusion_list$knn$byClass)[1],
          as.vector(confusion_list$knn$byClass)[2],
          as.vector(confusion_list$knn$byClass)[5])
  /test_data_partition1_mean_training_time$knn
  ,
  MLP = c(as.vector(confusion_list$mlp$overall)[1],
          as.vector(confusion_list$mlp$byClass)[1],
          as.vector(confusion_list$mlp$byClass)[2],
          as.vector(confusion_list$mlp$byClass)[5])
  /test_data_partition2_mean_training_time$mlp
  ,
  Metrics = c("Accuracy","Sensitivity","Specificity","Precision"),
  stringsAsFactors = F
)