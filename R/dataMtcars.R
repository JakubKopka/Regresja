dataMtcars <- function(raw="false"){
  data=mtcars
  #Zamiana danych na numeryczne a póżniej na ramke
  data = as.data.frame(sapply(data, as.numeric))
  #Podzial danych
  bound <- floor((nrow(data)/4)*3)
  s <- data[sample(nrow(data)), ]
  train <- data[1:bound, ]
  test <- data[(bound+1):nrow(data), ]


  if(tolower(raw) == "true" ){
    return (list("columns" = variable.names(data),
                 "train" = train,
                 "test"=test))
  }


  # Automatyczne dobieranie cech
  g1 <- lm(qsec ~1, data = train)
  wprzod=step(g1, diretion = "forward",
              scope = list(upper=.~.+mpg+cyl+hp+drat+wt+vs+am+gear+carb), trace=0)

  g2 <- lm(qsec~mpg+cyl+hp+drat+wt+vs+am+gear+carb, data = train)
  wtyl = step(g2, direction = "backward",
              scope = list(upper=.~.+mpg+cyl+hp+drat+wt+vs+am+gear+carb), trace=0)


  g3 <- lm(qsec~., data = train)
  wdwie = step(g3, direction = "both",
               scope = list(upper=.~.+mpg+cyl+hp+drat+wt+vs+am+gear+carb), trace=0)


  #cat("\n------------------Podsumowanie--------------------\n")
  #cat("\nMultiple R-squared (forward): ", summary(wprzod)$r.squared) # Multiple R-squared:  0.8510283
  #cat("\nMultiple R-squared (backward): ", summary(wtyl)$r.squared) # Multiple R-squared:  0.8475095
  #cat("\nMultiple R-squared (both): ", summary(wdwie)$r.squared) #Multiple R-squared:  0.854394
  #cat("\n\n")
  kolumny <-variable.names(wdwie)


  kolumny[1] <- "qsec"

  train = train[,c(kolumny)]
  test = test[,c(kolumny)]

  return (list("columns" = kolumny, "train" = train, "test"=test))
}
