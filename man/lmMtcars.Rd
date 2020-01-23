\name{lmMtcars}
\alias{lmMtcars}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
LM Mtcars
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Funkcja ta zwraca model liniowy. Funkcja ta działa z danymi z \code{dataMtcars()}.
}
\usage{
lmMtcars(columns, train)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{columns}{
     \code{columns} lista kolumn na podstawie których ma zostać zbudowany model.

}
  \item{train}{
 \code{train} zbiór danych treningowych
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
Funckja zwraca gotowy model liniowy oparty na lm().
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
Jakub Kopka
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

## The function is currently defined as
lmMtcars (columns, train)
{
    model = lm(Price ~ ., data = train[, columns])
    return(model)
  }
## Wywołanie
columns = dataMtcars()$columns
train = dataMtcars()$train
lm = lmMtcars(columns, train)
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
