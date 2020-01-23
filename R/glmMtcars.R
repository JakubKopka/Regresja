glmMtcars <- function(columns, train, family){

  if(tolower(family) == "gaussian"){
    model_glm = glm(qsec~., data=train[,columns],
                    family = gaussian(link = "identity"))
  }
  else if(tolower(family) == "gamma"){
    model_glm = glm(qsec~., data=train[,columns],
                    family = Gamma(link = "inverse"))
  }
  else if(tolower(family) == "quasipoisson"){
    model_glm = glm(qsec~., data=train[,columns],
                    family = quasipoisson(link = "log"))
  }
  else if(tolower(family) == "poisson"){
    model_glm = glm(qsec~., data=train[,columns],
                    family = poisson(link = "log"))
  }
  else if(tolower(family) == "quasi"){
    model_glm = glm(qsec~., data=train[,columns],
                    family = quasi(link = "identity", variance = "constant"))
  }



  return (model_glm)
}


#Dane obrobione
#columns <- dataMtcars()$columns
#train <- dataMtcars()$train
#test <- dataMtcars()$test

# Dane surowe
#columns <- dataMtcars(raw="true")$columns
#train <- dataMtcars(raw="true")$train
#test <- dataMtcars(raw="true")$test


# quasipoisson
#glm_quasipoisson = glmMtcars(columns, train, family="quasipoisson")
#predicted_quasipoisson = predict(glm_quasipoisson, test)
#RMSE(test$qsec, predicted_quasipoisson) #13.84094| 13.84408

# gamma
#glm_gamma = glmMtcars(columns, train, family="gamma")
#predicted_gamma = predict(glm_gamma, test)
#RMSE(test$qsec, predicted_gamma) #16.60762| 16.60704

# gaussian
#glm_gaussian = glmMtcars(columns, train, family="gaussian")
#predicted_gaussian = predict(glm_gaussian, test)
#RMSE(test$qsec, predicted_gaussian) #1.050713| 1.157114

# poisson
#glm_poisson = glmMtcars(columns, train, family="poisson")
#predicted_poisson = predict(glm_poisson, test)
#RMSE(test$qsec, predicted_poisson) #13.84094| 13.84408


# quasi
#glm_quasi = glmMtcars(columns, train, family="quasi")
#predicted_quasi= predict(glm_quasi, test)
#RMSE(test$qsec, predicted_quasi) #1.050713 | 1.157114
