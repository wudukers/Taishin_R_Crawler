"http://mops.twse.com.tw/mops/web/t51sb01"

library(httr)
ptt_posts_lit <- GET("https://www.ptt.cc/bbs/R_Language/index.html")
htmlParse(content(ptt_posts_lit, "text", encoding = "utf8"))
