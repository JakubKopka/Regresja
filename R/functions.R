RMSE = function(test, predicted){
  sqrt(mean((test - predicted)^2))
}
