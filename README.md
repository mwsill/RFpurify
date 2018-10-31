RF_purify
=========

R-package to predict tumor purity using a Random Forest regression model trained on Illumina 450k or EPIC methylation data.

```{r}
# install package via devtools
if(!require(devtools)) install.packages("devtools")   
library(devtools)
install_github('mwsill/RF_purify')
library(RF_purify)
library(minfiData)
load(MsetEx)
predict_purity(MsetEx)
```