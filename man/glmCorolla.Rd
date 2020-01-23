\name{glmCorolla}
\alias{glmCorolla}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
GLM Corolla
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Funkcja ta zwraca model glm w zależności od argumentu \code{family}.
Funkcja ta działa z danymi z \code{dataCorolla()}.
}
\usage{
glmCorolla(columns, train, family)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{columns}{
     \code{columns} lista kolumn na podstawie których ma zostać zbudowany model.

}
  \item{train}{
 \code{train} zbiór danych treningowych
}
 \item{family}{
 Dostępne rodziny: \code{family = c("gaussian", "gamma", "quasipoisson", "poisson", "quasi")}

}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
Funckja zwraca gotowy model glm() oparty na wybranej rodzinie.
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

columns = dataCorolla()$columns
train = dataCorolla()$train
glm = glmCorolla(columns, train, family="gamma")
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

