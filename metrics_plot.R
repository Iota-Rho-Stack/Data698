require(ggplot2)
require(reshape2)
ggplot(melt(data = source('/cloud/project/metrics_df.R')$value, id.vars = "Metrics")) + aes(x = variable, y = value) + geom_line(aes(color = Metrics, group = Metrics)) + xlab(NULL) + ylab("Precision Rate")
rm(confusion_list)
