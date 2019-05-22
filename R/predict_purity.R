#' predicts tumor purity using a minfi Mset object
#'
#' \code{predict_purity} predicts tumor purity using a minfi Mset object.
#'
#' @param Mset an object of class Mset
#' @param method gold standard purity method for which purity is predicted, either 'ABSOLUTE' or 'ESTIMATE'  
#' @export
#' @import minfi

predict_purity <- function(Mset,method=c("ABSOLUTE","ESTIMATE")) {
  method <- match.arg(method)
  if(class(Mset) != 'MethylSet') stop('Mset is not of class MethylSet, try predict.mnp.betas for beta values')
  betas <- getBeta(Mset, type="Illumina")
  predict_purity_betas(betas,method)
}
