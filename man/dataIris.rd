\name{dataIris}
\alias{dataIris}
\title{Zbiór danych Iris}
\usage{

  dataIris()

}
\description{
  Funkcja ta zwraca (obrobioną lub nie) listę kolumn oraz dane testowe (25\%) i treingowe (75\%).
  Funkcja domyślnie zwraca obrobione dane.
  Aby funkcja zwracała surowe dane należy wywołać ją z argumentem raw="true".
  Obrobienie danych polega na usunięciu wartości odstających za pomocą odległości Cook'a.
}
\examples{
  # Dane obrobione
  kolumny = dataIris()$columns
  train = dataIris()$train
  test = dataIris()$test

  # Dane surowe
  kolumny = dataIris(raw="true")$columns
  train = dataIris(raw="true")$train
  test = dataIris(raw="true")$test
}
