
library(httr)
library(XML)
res <- GET("https://www.ptt.cc/bbs/R_Language/index.html")
html <- htmlParse(content(res, "text", encoding = "utf8"))
html


library(CSS)
library(stringr)
library("Rwordseg", lib.loc="/usr/local/lib/R/site-library")
str_trim(cssApply(html,"div.title", cssCharacter))
segmentCN(str_trim(cssApply(html,"div.title", cssCharacter)))
