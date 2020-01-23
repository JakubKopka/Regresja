dataIris <- function(raw="false"){
  data <- iris
  # zamiana nawarto?ci numeryczne
  data = as.data.frame(sapply(data, as.numeric))
  # wymieszanie danych
  set.seed(100)
  data <- data[sample(nrow(data)),]
  # podzia? zbioru na treninowy i testowy
  bound <- floor((nrow(data)/4)*3)
  s <- data[sample(nrow(data)), ]
  train <- data[1:bound, ] #112
  test <- data[(bound+1):nrow(data), ] #38

  # je?eli true to nie ingeruje w wartosci odstaj?ce
  if(tolower(raw) == "true" ){
    return (list("columns" = variable.names(data),
                 "train" = train,
                 "test"=test))
  }

  # Usuwanie warto?ci odstaj?cych odleg?o?ci? cooka # nowy zbi?r ma o 13 obserwacji mniej
  m1 <- lm(Sepal.Length~., data=data)
  cooksd <- cooks.distance(m1)
  wspolczynnik_odciecia=5
  plot(cooksd, pch="*", cex=2, main="Obseracje odstajace dla odleglosci Cooka")  # wykres
  abline(h = wspolczynnik_odciecia*mean(cooksd, na.rm=T), col="red")  # dodanie linii odciecia 3*srednia
  text(x=1:length(cooksd)+1, y=cooksd, labels=ifelse(cooksd>wspolczynnik_odciecia*mean(cooksd, na.rm=T),names(cooksd),""), col="red")  # dodawanie etykiet
  indeksy_odstajacych=which(cooksd>wspolczynnik_odciecia*mean(cooksd, na.rm=T))
  data[indeksy_odstajacych, ]
  new_data=data[-indeksy_odstajacych, ]

  # je?eli usun??em warto?ci odstaj?ce to tworz? zbi?r treninogwy i testowy na nowych danych
  kolumny <-variable.names(new_data)
  bound <- floor((nrow(new_data)/4)*3)
  s <- new_data[sample(nrow(new_data)), ]
  train <- new_data[1:bound, ] #102
  test <- new_data[(bound+1):nrow(new_data), ] #35


  return (list("columns" = kolumny, "train" = train, "test"=test))
}



