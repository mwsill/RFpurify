puremeth
========
R-package to predict tumor purity using a Random Forest regressioIllumina 450k or EPIC methylation data.

```{r}
# install package via devtools
if(!require(devtools)) install.packages("devtools")                
install_github('mwsill/puremeth')
library(puremeth)
library(minfiData)
load(MsetEx)
predict_purity(MsetEx)
```