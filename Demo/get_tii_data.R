library(gdata)

#########################

domestic_ins_company <- read.xls("http://www.tii.org.tw/images_P2/%E6%9C%AC%E5%9C%8B%E7%94%A2%E9%9A%AA%E5%85%AC%E5%8F%B8_20140822.xls")
(names(domestic_ins_company))
head(domestic_ins_company, n=2)


#########################


urls <- list("http://www.tii.org.tw/images_P2/%E6%9C%AC%E5%9C%8B%E7%94%A2%E9%9A%AA%E5%85%AC%E5%8F%B8_20140822.xls",
             "http://www.tii.org.tw/images_P2/%E5%A4%96%E5%9C%8B%E7%94%A2%E9%9A%AA%E5%85%AC%E5%8F%B8_20141030.xls",
             "http://www.tii.org.tw/images_P2/%E6%9C%AC%E5%9C%8B%E5%A3%BD%E9%9A%AA%E5%85%AC%E5%8F%B8_20150113.xls",
             "http://www.tii.org.tw/images_P2/%E5%A4%96%E5%9C%8B%E5%A3%BD%E9%9A%AA%E5%85%AC%E5%8F%B8_20140904.xls",
             "http://www.tii.org.tw/images_P2/%E5%B0%88%E6%A5%AD%E5%86%8D%E4%BF%9D%E9%9A%AA%E5%85%AC%E5%8F%B81001228.xls",
             "http://www.tii.org.tw/images_P2/%E5%A4%96%E5%9C%8B%E4%BF%9D%E9%9A%AA%E5%85%AC%E5%8F%B8%E5%9C%A8%E5%8F%B0%E8%81%AF%E7%B5%A1%E8%99%9520140703.xls",
             "http://www.tii.org.tw/images_P2/%E6%9C%AC%E5%9C%8B%E4%BF%9D%E9%9A%AA%E7%9B%B8%E9%97%9C%E6%A9%9F%E6%A7%8B_20141227.xls",
             "http://www.tii.org.tw/images_P2/%E5%A4%96%E5%9C%8B%E9%87%91%E8%9E%8D%E4%BF%9D%E9%9A%AA%E7%9B%B8%E9%97%9C%E6%A9%9F%E6%A7%8B1010102.xls")
results <- list()
for (url in urls){
  print(paste("Processing ", url))
  data <- read.xls(url, header=T, stringsAsFactors=F)
  results <- c(results, list(data))
}