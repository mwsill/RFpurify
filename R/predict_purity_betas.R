#' predicts tumor purity using a matrix of beta methylation values
#'
#' \code{predict_purity_betas} predicts tumor purity using a matrix of beta methylation values.
#'
#' @param betas a matrix of beta methylation values
#' @param method gold standard purity method for which purity is predicted, either 'ABSOLUTE' or 'ESTIMATE'  
#' @export
#' @import randomForest

predict_purity_betas <- function(betas,method=c("ABSOLUTE","ESTIMATE")) {
  method <- match.arg(method)
  switch(method,
         ABSOLUTE={
           betas <- betas[match(rownames(RFpurify_ABSOLUTE$importance), rownames(betas)), , drop = FALSE]
           predict(RFpurify_ABSOLUTE, t(betas))
           },
         ESTIMATE={
           betas <- betas[match(rownames(RFpurify_ESTIMATE$importance), rownames(betas)), , drop = FALSE]
           predict(RFpurify_ESTIMATE, t(betas))
         })
}
