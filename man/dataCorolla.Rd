\name{dataCorolla}
\alias{dataCorolla}
\title{Zbiór danych ToyotaCorolla}
\usage{

  dataCorolla()

}
\description{
  Funkcja ta zwraca (obrobioną lub nie) listę kolumn oraz dane testowe (25\%) i treingowe (75\%).
  Funkcja domyślnie zwraca obrobione dane.
  Aby funkcja zwracała surowe dane należy wywołać ją z argumentem raw="true".
  Obrobienie danych polega na usunięciu mniej istotnych kolumn za pomocą funkcji step().
}
\examples{
  # Dane obrobione
  kolumny = dataCorolla()$columns
  train = dataCorolla()$train
  test = dataCorolla()$test

  # Dane surowe
  kolumny = dataCorolla(raw="true")$columns
  train = dataCorolla(raw="true")$train
  test = dataCorolla(raw="true")$test
}
