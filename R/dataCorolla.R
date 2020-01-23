dataCorolla <- function(raw="false"){
  data=read.csv("./data/ToyotaCorolla.csv")

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
  #

  # Automatyczne dobieranie cech
  #cat("\n------------------forward----------------------\n")
  g1 <- lm(Price~1, data = train)
  wprzod=step(g1, diretion = "forward",
              scope = list(upper=.~.+Age+KM+FuelType+HP+MetColor+Automatic+CC+Doors+Weight), trace=0)
  #Wybrany model: Price ~ Age + HP + Weight + KM + FuelType + CC + Doors

  #lm(Price~., data=train[,kolumny])
  #cat("\n------------------backward----------------------\n")
  g2 <- lm(Price~Age+KM+FuelType+HP+MetColor+Automatic+CC+Doors+Weight, data = train)
  wtyl = step(g2, direction = "backward",
              scope = list(upper=.~.+Age+KM+FuelType+HP+MetColor+Automatic+CC+Doors+Weight), trace=0)
  #Wybrnay model : Price ~ Age + KM + FuelType + HP + CC + Doors + Weight


  #cat("\n------------------both----------------------\n")
  # Model: Price ~ Age + HP + Weight + KM + FuelType + CC + Doors
  g3 <- lm(Price~., data = train)
  wdwie = step(g3, direction = "both",
               scope = list(upper=.~.+Age+KM+FuelType+HP+MetColor+Automatic+CC+Doors+Weight), trace=0)


  #cat("\n------------------Podsumowanie--------------------\n")
  #cat("\nMultiple R-squared (forward): ", summary(wprzod)$r.squared) # Multiple R-squared:  0.8615953
  #cat("\nMultiple R-squared (backward): ", summary(wtyl)$r.squared) # Multiple R-squared:  0.8615953
  #cat("\nMultiple R-squared (both): ", summary(wdwie)$r.squared) #Multiple R-squared:  0.8615953
  # Wszystkie podejścia dają taki samy błąd

  kolumny <-variable.names(wprzod)
  kolumny[1] <- "Price"

  train = train[,c(kolumny)]
  test = test[,c(kolumny)]
  return (list("columns" = kolumny, "train" = train, "test"=test))
}
