lmMtcars <- function(columns, train){
  model = lm(qsec~., data=train[,columns])
  return (model)
}


#columns <- dataMtcars()$columns
#train <- dataMtcars()$train
#test <- dataMtcars()$test

#lm <- lmMtcars(columns, train)
#RMSE (test$qsec, predict(lm, test)) #1.050713


# Dane surowe
#columns <- dataMtcars(raw="true")$columns
#train <- dataMtcars(raw="true")$train
#test <- dataMtcars(raw="true")$test

#lm <- lmMtcars(columns, train)
#RMSE(test$qsec, predict(lm, test)) #1.157114

