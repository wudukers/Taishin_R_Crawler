install.packages("quantmod")
library(quantmod)

?getSymbols

getSymbols("^TWII")
chartSeries(TWII)

# TWII = getSymbols("^TWII",auto.assign = FALSE)
# View(TWII)
# str(TWII)
# dim(TWII)
# NROW(TWII)
# NCOL(TWII)

install.packages("rpart")
library(rpart)
example(rpart)


# install.packages("ggplot2")
library(ggplot2)
exmaple(ggplot)


library("Rwordseg", lib.loc="/usr/local/lib/R/site-library")
segmentCN("今天天氣很好")


