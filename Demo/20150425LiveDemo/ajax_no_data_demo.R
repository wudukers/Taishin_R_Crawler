library(httr)
Target_URL = "http://ecshweb.pchome.com.tw/search/v3.3/?q=sony"
res <- GET(Target_URL)
doc_str <- content(res, "text", encoding = "utf8")

library(CSS)
doc <- htmlParse(doc_str)
cssApply(doc, "h5>a", cssCharacter)
