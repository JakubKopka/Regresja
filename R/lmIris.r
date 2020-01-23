lmIris <- function(columns, train){
  model = lm(Sepal.Length~., data=train[,columns])
  return (model)
}

# columns <- dataIris()$columns
# train <- dataIris()$train
# test <- dataIris()$test

#lm <- lmIris(columns, train)

#predict(lm, test)

# RMSE(test$Sepal.Length, predict(lm, test)) # 0.2531975
 # dane surowe
#columns <- dataIris(raw="true")$columns
#train <- dataIris(raw="true")$train
#test <- dataIris(raw="true")$test
#lm <- dataIris(columns, train)
#predict(lm, test)
# RMSE(test$Sepal.Length, predict(lm, test)) # 0.2784828

