library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")


remDr$open()

# URL 이동
remDr$navigate("http://www.naver.com")

webElem <- remDr$findElement(using = "css","[name='query']") # 검색창 

webElem$sendKeysToElement(list("java", key = "enter"))

webElem <- remDr$findElements(using = "css","dd.lst_relate._related_keyword_list > ul a") # 연관검색어 추출 

text <- sapply(webElem, function(x){x$getElementText()})

text <- unlist(text)

#lnb > div > div.lnb_menu > ul > li.lnb2 > a > span # 이미지클릭

webElem <- remDr$findElements(using = "css","#lnb > div > div.lnb_menu > ul > li.lnb2 > a > span")

sapply(webElem, function(x){x$clickElement()})

remDr$executeScript("alert('hello')")

remDr$executeScript("scrollTo(0, document.body.scrollHeight*0.5)")

# 페이지 전체 소스코드 읽어오기
html <- remDr$getPageSource()[[1]]
text_html <- read_html(html)

help("switchToframe")
