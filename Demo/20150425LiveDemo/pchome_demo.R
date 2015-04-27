
library(httr)

url <- "http://ecshweb.pchome.com.tw/search/v3.3/all/results?q=sony&page=1&sort=rnk/dc"
res = GET(url)
View(data.frame(do.call(rbind,res_json$prods)))