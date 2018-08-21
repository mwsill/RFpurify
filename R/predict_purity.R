#' predicts tumor purity using a minfi Mset object
#'
#' \code{predict_purity} predicts tumor purity using a minfi Mset object.
#'
#' @param Mset an object of class Mset
#' @export
#' @import minfi

predict_purity <- function(Mset) {
  if(class(Mset) != 'MethylSet') stop('Mset is not of class MethylSet, try predict.mnp.betas for beta values')
  betas <- getBeta(Mset, type="Illumina")
  predict_purity_betas(betas)
}
