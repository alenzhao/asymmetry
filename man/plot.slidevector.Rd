\name{plot.slidevector}
\alias{plot.slidevector}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Configuration Plot for the Slide-vector Model
}
\description{
Method for a two-dimensional plot of the model. Available rownames are plotted as labels above the points. The slide-vector is shown as an arrow.
}
\usage{
\method{plot}{slidevector}(x, plot.dim = c(1,2), yplus = 0, xlab, ylab, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
Object of class \code{slidevector}
}
  \item{plot.dim}{
A vector with dimensions to be plotted
}
  \item{yplus}{
  parameter to adjust the vertical position of the label
  }
  \item{xlab}{
Label of x-axis.
}
  \item{ylab}{
Label of y-axis.
}
  \item{\dots}{Further plot arguments: see \code{\link[graphics]{plot}} for detailed information.}
}



\examples{
## 2D plot for the slide-vector model
dis <- matrix(c(1,2,3,4,5,6,2,8,9,3), nrow = 5, ncol = 2)
a <- rbind(dis,dis+1.5)
test <- as.matrix(dist(a))[1:5,6:10]
v <- slidevector(test, 2, 250, .001)
plot(v)
}
