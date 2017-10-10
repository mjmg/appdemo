#' Make a random plot
#' 
#' This function creates a random histogram plot.
#' 
#' @export
#' @param n numer of random values 
#' @param dist one of "normal" or "uniform".
#' @importFrom shiny ggplot2
randomplot <- function(n, dist=c("normal", "uniform")){
  #input validation
  dist <- match.arg(dist)
  stopifnot(n < 1e6)
  df1 <- data.frame(rnorm(n))
  df2 <- data.frame(runif(n))
  
  if(dist == "normal"){
    #hist(rnorm(n))
    ggplot(df1, aes(x=weight)) + geom_histogram()
  }
  
  if(dist == "uniform"){
    #hist(runif(n))
    ggplot(df2, aes(x=weight)) + geom_histogram()
  }
  
  #return nothing
  invisible();  
}
