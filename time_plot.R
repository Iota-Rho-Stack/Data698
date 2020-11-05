require(ggplot2)
require(reshape2)
ggplot(melt(data.frame(Control = as.vector(unlist(control_data_mean_training_time)),
                       Part1 = as.vector(unlist(test_data_partition1_mean_training_time)),
                       Part2 = as.vector(unlist(test_data_partition2_mean_training_time)),
                       Part3 = as.vector(unlist(test_data_partition3_mean_training_time)),
                       Classifier = c("Logistic_Regression","SVC","KNN","MLP")),
            id.vars = "Classifier")) + aes(x = variable, y = value) + geom_line(aes(color = Classifier, group = Classifier)) + xlab(NULL) + ylab("System.time()")
