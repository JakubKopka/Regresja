glmCorolla <- function(columns, train, family){
  if(tolower(family) == "gaussian"){
    model_glm = glm(Price~., data=train[,columns],
                    family = gaussian(link = "identity"))
  }
  else if(tolower(family) == "gamma"){
    model_glm = glm(Price~., data=train[,columns],
                    family = Gamma(link = "inverse"))
  }
  else if(tolower(family) == "quasipoisson"){
    model_glm = glm(Price~., data=train[,columns],
                    family = quasipoisson(link = "log"))
  }
  else if(tolower(family) == "poisson"){
    model_glm = glm(Price~., data=train[,columns],
                    family = poisson(link = "log"))
  }
  else if(tolower(family) == "quasi"){
    model_glm = glm(Price~., data=train[,columns],
                    family = quasi(link = "identity", variance = "constant"))
  }

  return (model_glm)
}


#Dane obrobione
#columns <- dataCorolla()$columns
#train <- dataCorolla()$train
#test <- dataCorolla()$test

# Dane surowe
#columns <- dataCorolla(raw="true")$columns
#train <- dataCorolla(raw="true")$train
#test <- dataCorolla(raw="true")$test



# quasipoisson
#glm_quasipoisson = glmCorolla(columns, train, family="quasipoisson")
#predicted_quasipoisson = predict(glm_quasipoisson, test)
#RMSE(test$Price, predicted_quasipoisson) #8064.871| 8064.871

# gamma
#glm_gamma = glmCorolla(columns, train, family="gamma")
#predicted_gamma = predict(glm_gamma, test)
#RMSE(test$Price, predicted_gamma) #8073.813| 8073.813

# gaussian
#glm_gaussian = glmCorolla(columns, train, family="gaussian")
#predicted_gaussian = predict(glm_gaussian, test)
#RMSE(test$Price, predicted_gaussian) #1209.073| 1207.097

# poisson
#glm_poisson = glmCorolla(columns, train, family="poisson")
#predicted_poisson = predict(glm_poisson, test)
#RMSE(test$Price, predicted_poisson) #8064.871| 8064.871


# quasi
#glm_quasi = glmCorolla(columns, train, family="quasi")
#predicted_quasi= predict(glm_quasi, test)
#RMSE(test$Price, predicted_quasi) #1209.073 | 1207.097
