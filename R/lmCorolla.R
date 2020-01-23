lmCorolla <- function(columns, train){
  model = lm(Price~., data=train[,columns])
  return (model)
}

#columns <- dataCorolla()$columns
#train <- dataCorolla()$train
#test <- dataCorolla()$test

#lm <- lmCorolla(columns, train)

#predict(lm, test)

#rmse(test$Price, predict(lm, test)) #1209.073
# Dane surowe
#columns <- dataCorolla(raw="true")$columns
#train <- dataCorolla(raw="true")$train
#test <- dataCorolla(raw="true")$test
#lm <- lmCorolla(columns, train)
#predict(lm, test)
#RMSE(test$Price, predict(lm, test)) #1207.097
