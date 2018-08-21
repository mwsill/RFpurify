#' predicts tumor purity using a matrix of beta methylation values
#'
#' \code{predict_purity_betas} predicts tumor purity using a matrix of beta methylation values.
#'
#' @param betas a matrix of beta methylation values
#' @export
#' @import randomForest

predict_purity_betas <- function(betas) {
  betas <- betas[match(rownames(puremeth$importance), rownames(betas)), , drop = FALSE]
  out <- predict(puremeth, t(betas))
}
