
#### Dodać to /\ do "DESCRIPTION"!!!!!!!!!!!!!!!!!!!!!!!!!!!

svmCorolla <- function(columns, train, kernel = "radial"){
  model_svm = svm(Price~., data=train[,columns],
                  kernel = kernel,
                  type="nu-regression")
  return (model_svm)
}
#Dane obrobione
#columns <- dataCorolla()$columns
#train <- dataCorolla()$train
#test <- dataCorolla()$test

# Dane surowe
#columns <- dataCorolla(raw="true")$columns
#train <- dataCorolla(raw="true")$train
#test <- dataCorolla(raw="true")$test

#svm_radial = svmCorolla(columns, train)

#predicted = predict(svm_radial, test)

#RMSE(test$Price, predicted) #1145.888 | 1258.175 surowe

#------------------------------
#svm_polynomial = svmCorolla(columns, train, kernel = "polynomial")

#predicted_p = predict(svm_polynomial, test)

#RMSE(test$Price, predicted_p) #1372.606 | 1579.067


#-------------------------------
#svm_sigmoid = svmCorolla(columns, train, kernel = "sigmoid")

#predicted_sigmoid= predict(svm_sigmoid, test)

#RMSE(test$Price, predicted_sigmoid) #28884.79 | 20713.58


#----------------------------------
#svm_linear = svmCorolla(columns, train, kernel = "linear")

#predicted_linear= predict(svm_linear, test)

#RMSE(test$Price, predicted_linear) #1110.204 | 1113.275

