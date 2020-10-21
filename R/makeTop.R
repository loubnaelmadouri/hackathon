#' Rank Variables By Their Frequences
#' ...
#' @param ImportResult data frame
#' @param varToRank variable name 
#' @param n number of taxas in the output (default = all)
#' 
#' @return data frame
#' @importFrom dplyr arrange_at vars desc
#' @importFrom utils head
#' @export
#' 
#' @examples 
#' data(iris)
#' makeTop(ImportResult = iris, varToRank = "Sepal.Length", n=5)
#' 
makeTop <- function(ImportResult, varToRank, n = "all") {
  topDf <- dplyr::arrange_at(ImportResult, dplyr::vars(varToRank), list(dplyr::desc))
  topDf$Rang <- rank(desc(data.frame(topDf)[ , varToRank]), ties.method = "min")
  
  if (!n == "all"){
    topDf <- utils::head(topDf, n)
  }
  topDf
}  