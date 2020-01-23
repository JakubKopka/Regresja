library(e1071)

#### Dodaæ to /\ do "DESCRIPTION"!!!!!!!!!!!!!!!!!!!!!!!!!!!

svmIris <- function(columns, train, kernel = "radial"){
  model_svm = svm(Sepal.Length~., data=train[,columns],
                  kernel = kernel,
                  type="nu-regression")
  return (model_svm)
}
# #Dane obrobione                   obrobione  |  surowe
# columns <- dataIris()$columns
# train <- dataIris()$train
# test <- dataIris()$test
# 
# # Dane surowe
# columns <- dataIris(raw="true")$columns
# train <- dataIris(raw="true")$train
# test <- dataIris(raw="true")$test
# 
# svm_radial = svmIris(columns, train)
# 
# predicted = predict(svm_radial, test)
# 
# RMSE(test$Sepal.Length, predicted) # 0.3272615 | 0.3491633 surowe
# 
# #------------------------------
# svm_polynomial = svmIris(columns, train, kernel = "polynomial")
# 
# predicted_p = predict(svm_polynomial, test)
# 
# RMSE(test$Sepal.Length, predicted_p) # 0.2831165 | 0.3782467
# 
# 
# #-------------------------------
# svm_sigmoid = svmIris(columns, train, kernel = "sigmoid")
# 
# predicted_sigmoid= predict(svm_sigmoid, test)
# 
# RMSE(test$Sepal.Length, predicted_sigmoid) # 1.019071 | 1.422121
# 
# 
# #----------------------------------
# svm_linear = svmIris(columns, train, kernel = "linear")
# 
# predicted_linear= predict(svm_linear, test)
# 
# RMSE(test$Sepal.Length, predicted_linear) #0.2011303 | 0.2993042
