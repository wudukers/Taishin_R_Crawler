library(XML)
library(stringr)

# Connector
Target_URL = "http://tw.stock.yahoo.com/d/s/major_2451.html"
res <- GET(Target_URL)
content(res, "text", encoding = "big5")
res_html <- htmlParse(content(res, "text", encoding = "big5"), encoding = "utf8")



# Parser
tables <- readHTMLTable(res_html)
View(test_Tables[[8]])
View(test_Tables[[9]])
View(test_Tables[[10]])

sapply(tables,NCOL)
sapply(tables,NROW)

filter_condition <- (sapply(tables,NCOL)==8)&(sapply(tables,NROW) <= 15)
data_table <- tables[filter_condition][[1]]

View(data_table)
