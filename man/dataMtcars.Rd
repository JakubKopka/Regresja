\name{dataMtcars}
\alias{dataMtcars}
\title{Zbiór danych MtCars}
\usage{

  dataMtcars()

}
\description{
  Funkcja ta zwraca (obrobioną lub nie) listę kolumn oraz dane testowe (25\%) i treingowe (75\%).
  Funkcja domyślnie zwraca obrobione dane.
  Aby funkcja zwracała surowe dane należy wywołać ją z argumentem raw="true".
  Obrobienie danych polega na usunięciu mniej istotnych kolumn za pomocą funkcji step().
}
\examples{
  # Dane obrobione
  kolumny = dataMtcars()$columns
  train = dataMtcars()$train
  test = dataMtcars()$test

  # Dane surowe
  kolumny = dataMtcars(raw="true")$columns
  train = dataMtcars(raw="true")$train
  test = dataMtcars(raw="true")$test
}
