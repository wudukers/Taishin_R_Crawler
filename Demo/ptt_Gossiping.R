library(httr)
ptt_posts_lit <- GET("https://www.ptt.cc/bbs/Gossiping/index.html")
htmlParse(content(ptt_posts_lit, "text", encoding = "utf8"))

# ptt_posts_lit <- GET("https://www.ptt.cc/bbs/Gossiping/index.html",set_cookies(over18=1))
# htmlParse(content(ptt_posts_lit, "text", encoding = "utf8"))
