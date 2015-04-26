# Connector
library(httr)
Target_URL = "http://tw.stock.yahoo.com/d/s/major_2451.html"
res <- GET(Target_URL)
content(res, "text", encoding = "big5")

# Parser
library(CSS)
doc <- htmlParse(content(res, "text", encoding = "big5"), encoding = "utf8")
cssApply(doc, ".ttt", cssCharacter)