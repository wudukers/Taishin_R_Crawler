---
title       : R Basic with Web Crawler
subtitle    : Week 2
author      : Chia-Chi Chang
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
revealjs    : 
  theme: beige
  transition: slides
  center: "true"
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap]  # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
github:
  user: wudukers
  repo: Taishin_R_Crawler

---

<h1>
  <font color=#005CE6>R Basic with Web Crawler</font>
</h1>
<h3>
  <font color="green">Week 2</font>
</h3>
<h3>
  <font color="black">Chia-Chi Chang</font>
</h3>

--- &vertical

# Ajax

***

## Ajax 簡介

<div align='left'>
	<ul>
		<li class='fragment'>Ajax 是 Asyncronized Javascript and XML 的縮寫。</li>
		<li class='fragment'>是一種非同步的網路技術 (動態網站)。</li>
	</ul>
</div>
<br>
<div class='fragment'>
	<font color='red'>阿鬼....你還是說中文吧? =   =</font>
</div>
<br>
<div align='left'>
	<ul>
		<li class='fragment'>另一方面來說，傳統的 HTTP 中的 Request - Response 是我們常說的靜態網站。</li>
	</ul>
</div>

***

## 複習一下

還記得這張圖嗎？

![](assets/img/http.png)

<div class='fragment'>Request - Response 的互動模式可能會有什麼問題？</div>

***

<div align='left'>
	傳統靜態網頁:
	<br>
	<ul>
		<li class='fragment'>client 端可能要等很久才會得到 response</li>
		<li class='fragment'>client 端閒置時間長，負擔小; sever 端處理大量網頁，負擔大。</li>
	</ul>
	<br>
	<br>
	<div class='fragment'>有沒有什麼方法可以:
		<ul>
			<li class='fragment'>縮短等待時間</li>
			<li class='fragment'>減少 client 閒置時間，多加利用 client 端的資源</li>
		</ul>
	</div>
	<br>
	<div class="fragment">Ajax 就是為了因應這類需求所誕生的。</div>
</div>

***

## Ajax in a Nutshell

![](assets/img/ajax.gif)
<br>
[圖片來源](http://www.javajazzup.com/issue10/page11.shtml)

***

以 Week1 投影片中的 PChome 網站為例：

<a href="http://24h.pchome.com.tw/prod/DRAH2G-A9005M2RZ">
	<img src="assets/img/pchome_json.png">
</a>


***

## Summary of Ajax

<ul>
	<li class='fragment'>Ajax 技術可以非同步的方式改變頁面。</li>
	<li class='fragment'>使用 callback 可以針對不同的 response 做出反應。</li>
	<li class='fragment'>現行大部份的網站都有使用 Ajax 技術來提升使用者經驗。</li>
	<li class='fragment'>可用停用 javascript 來檢定想爬的網站是否有使用 Ajax 技術。</li>
</ul>
<br>
<div class='fragment'>
	<font color='green'>太好了....我除了要學 R 還要學 javascript 才能寫爬蟲!?</font>	
</div>
<br>
<div class='fragment'>
	<font size=14 color='red'>崩潰!!!</font>
</div>


--- &vertical

# Post Method 
## in Practice

***

以公開資訊觀測站為例：

- 進入[公開資訊觀測站](http://mops.twse.com.tw/mops/web/t51sb01)
- 打開開發人員工具
- 你應該會看到:

<img class="fragment" src="assets/img/mops.png">

***

- 點開 Network 分頁
- 開始瀏覽網站
- 觀察 Network 分頁所顯示的資訊

<div class='fragment'>說說你的發現吧!</div>

--- &vertical

# Web Driver 
## RSelenium

--- &vertical

# Bad CSV

***

## Bad CSV

<ul>
	<li class='fragment'>經過上週的作業，各位手邊應該已經成功下載好很多 csv 檔。</li>
	<li class='fragment'>
		<font color='red'>應該有寫作業吧....=   =+</font>
	</li>
	<li class='fragment'>上次在課堂中，也解釋過一個 csv 檔應該要有怎樣的統一格式。</li>
	<li class='fragment'>很不幸的，很多公開資料在我們大有為的政府單位上，格式並不統一。</li>
	<li class='fragment'>這樣的 csv 檔會造成我們資料處理，尤其是自動化。</li>	
</ul>

***

## We Need Powerful CSV Parsor

--- &vertical

# R Basic

--- &vertical

# Homework

--- &vertical

# Q & A
