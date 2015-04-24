"http://mops.twse.com.tw/mops/web/t51sb01"

library(httr)

cookie = 'cookiefile.txt'
curlHandle <- getCurlHandle(cookiefile=cookie, cookiejar=cookie) 

test = GET("https://www.ptt.cc/bbs/Gossiping/index.html",set_cookies(over18=1))

content(test, "text", encoding = "utf8")
