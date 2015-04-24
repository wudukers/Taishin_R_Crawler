library(httr)
library(XML)

res <- POST("http://mops.twse.com.tw/mops/web/ajax_t51sb01",
            body = "encodeURIComponent=1&step=1&firstin=1&TYPEK=sii&code=")
?content
content(res, "text", encoding = "utf8")

htmlParse(content(res, "raw"))

tables <- readHTMLTable(htmlParse(content(res, "text", encoding = "utf8")),stringsAsFactors=FALSE)
View(tables[[2]])

dataCol = tables[[2]][,1]
dataCol[2]

gsub(" ", "", dataCol[2]) 

?substr
substr(dataCol[2],1,1) == " "

charToRaw(dataCol[2])
charToRaw(" ")

gsub(" ", "", " ReplaceSpace ") 

dataCol =  gsub("[$,\xc2\xa0]", "", dataCol) 
grep("[0-9]+", dataCol)
TWSE_IDs = dataCol[grep("[0-9]+", dataCol)]

