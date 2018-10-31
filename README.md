RFpurify
=========

R-package to predict tumor purity using a Random Forest regression model trained on Illumina 450k or EPIC methylation data.

```{r}
# install package via devtools
if(!require(devtools)) install.packages("devtools")   
library(devtools)
install_github('mwsill/RFpurify')
library(RFpurify)
library(minfiData)
load(MsetEx)
predict_purity(MsetEx)
```