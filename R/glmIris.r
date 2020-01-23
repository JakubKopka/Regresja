glmIris <- function(columns, train, family){
  if(tolower(family) == "gaussian"){
    model_glm = glm(Sepal.Length~., data=train[,columns],
                    family = gaussian(link = "identity"))
  }
  else if(tolower(family) == "gamma"){
    model_glm = glm(Sepal.Length~., data=train[,columns],
                    family = Gamma(link = "inverse"))
  }
  else if(tolower(family) == "quasipoisson"){
    model_glm = glm(Sepal.Length~., data=train[,columns],
                    family = quasipoisson(link = "log"))
  }
  else if(tolower(family) == "poisson"){
    model_glm = glm(Sepal.Length~., data=train[,columns],
                    family = poisson(link = "log"))
  }
  else if(tolower(family) == "quasi"){
    model_glm = glm(Sepal.Length~., data=train[,columns],
                    family = quasi(link = "identity", variance = "constant"))
  }
  
  return (model_glm)
}

# 
# #Dane obrobione
# columns <- dataIris()$columns
# train <- dataIris()$train
# test <- dataIris()$test
# 
# # Dane surowe
# columns <- dataIris(raw="true")$columns
# train <- dataIris(raw="true")$train
# test <- dataIris(raw="true")$test
# 
# 
# 
# # quasipoisson                                dane obrobione | dane surowe
# glm_quasipoisson = glmIris(columns, train, family="quasipoisson")
# predicted_quasipoisson = predict(glm_quasipoisson, test)
# RMSE(test$Sepal.Length, predicted_quasipoisson) # 4.201317  |  4.239627
# 
# # gamma
# glm_gamma = glmIris(columns, train, family="gamma")
# predicted_gamma = predict(glm_gamma, test)
# RMSE(test$Sepal.Length, predicted_gamma) # 5.787837 | 5.853932
# 
# # gaussian
# glm_gaussian = glmIris(columns, train, family="gaussian")
# predicted_gaussian = predict(glm_gaussian, test)
# RMSE(test$Sepal.Length, predicted_gaussian) # 0.1896056| 0.284817
# 
# # poisson
# glm_poisson = glmIris(columns, train, family="poisson")
# predicted_poisson = predict(glm_poisson, test)
# RMSE(test$Sepal.Length, predicted_poisson) # 4.201317| 4.239627
# 
# 
# # quasi
# glm_quasi = glmIris(columns, train, family="quasi")
# predicted_quasi= predict(glm_quasi, test)
# RMSE(test$Sepal.Length, predicted_quasi) # 0.1896056 | 0.284817
