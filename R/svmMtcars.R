
svmMtcars <- function(columns, train, kernel = "radial"){
  model_svm = svm(qsec~., data=train[,columns],
                  kernel = kernel,
                  type="nu-regression")
  return (model_svm)
}


#Dane obrobione
#columns <- dataMtcars()$columns
#train <- dataMtcars()$train
#test <- dataMtcars()$test

# Dane surowe
#columns <- dataMtcars(raw="true")$columns
#train <- dataMtcars(raw="true")$train
#test <- dataMtcars(raw="true")$test

#svm_radial = svmMtcars(columns, train)

#predicted = predict(svm_radial, test)

#RMSE(test$qsec, predicted) #1.91813 |  1.980707

#------------------------------
#svm_polynomial = svmMtcars(columns, train, kernel = "polynomial")

#predicted_p = predict(svm_polynomial, test)

#RMSE(test$qsec, predicted_p) #4.424246 | 4.167068


#-------------------------------
#svm_sigmoid = svmMtcars(columns, train, kernel = "sigmoid")

#predicted_sigmoid= predict(svm_sigmoid, test)

#RMSE(test$qsec, predicted_sigmoid) #1.582125 | 1.471263


#----------------------------------
#svm_linear = svmMtcars(columns, train, kernel = "linear")

#predicted_linear= predict(svm_linear, test)

#RMSE(test$qsec, predicted_linear) #0.9736886| 0.6156598
