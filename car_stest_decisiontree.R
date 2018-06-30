

x<-list(name="Fred", wife="mary", no.children=3, age=(c(2,4,6)))
x
mtcars
edit(employdata)
dim(employdata)
nrow(employdata)
head(mtcars)
tail(mtcars, n=10)
str(mtcars)
summary(mtcars)
install.packages("rpart")
library(rpart)
summary(car.test.frame)
chooseCRANmirror()
CAR=car.test.frame[,-3]
summary(car.test.frame)
car=car.test.frame[,-3]
str(car)
set.seed(123)
car_mixed=car[order(runif(60)), ]
car_train=car_mixed[1:45,]
car_test=car_mixed[46:60, ]
CART_model=rpart(Price~.,data=car_train)
CART_model
rpart.plot::rpart.plot(CART_model)
CART_pred=predict(CART_model, car_test[,-1])
CART_pred
CART_pred
library(Metrics)
head(CART_pred)
mae(car_test[,1],CART_pred)
==================
  
  
  
  
  
  
  
  
  
  
  
