\name{svmIris}
\alias{svmIris}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
SVM Iris
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Funkcja ta zwraca model svm w zależności od funkcji jądrowej \code{kernel}. Domyślna funkcja jądrowa to \code{radial}.
Funkcja ta działa z danymi z \code{dataIris()}.
}
\usage{
svmIris(columns, train, kernel)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{columns}{
     \code{columns} lista kolumn na podstawie których ma zostać zbudowany model.

}
  \item{train}{
 \code{train} zbiór danych treningowych
}
 \item{kernel}{
 Dostępne funkcje jądrowe: \code{kernel = c("radial", "polynomial", "sigmoid", "linear")}

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
Funckja zwraca gotowy model svm() oparty na wybranej funkcji jądrowej.
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
Mateusz Grzela
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

columns = dataIris()$columns
train = dataIris()$train
svm = svmIris(columns, train, kernel="polynomial")
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

