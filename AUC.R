library(C50)
library(caret)
library(ROCR)
Heart <- read.csv("D:/Sajith/Heart_data.csv")
head(Heart)
str(Heart)
Heart_train <- Heart[1:270 ,]
Heart_test <-Heart[271:360 ,]
C5.0_model <- C5.0(Heart_train[, 1:7],Heart_train[, 8])
summary(C5.0_model)

summary(C5.0_model)
plot (C5.0_model)
predicted=predict(C5.0_model,Heart_test[, 1:7])
confusionMatrix(predicted,Heart_test[, 8])
predicted_prob=predict
predicted_prob=predict(C5.0_model,Heart_test[,1:7],type="prob")
predicted_prob
ROC=performance(mult_measures,measure='tpr',x.measure="fpr")
mult_measures=prediction(predicted_prob[,2],Heart_test[,8])
mult
mult_measures
ROC2<-performance(mult_measures,measure="auc")
auc=as.numeric(ROC2@y.values)
auc_lgnd=paste(c("AUC",auc), collapse = "")

plot(ROC, col="red")
abline(a=0, b=1)
legend(.6,.3, auc_lgnd, lty=1, lwd=1, col="red")
                  