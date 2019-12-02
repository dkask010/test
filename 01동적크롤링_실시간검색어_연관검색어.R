rm(list=ls())
# 실시간 검색어 의  연관검색어 읽어오기
library(RSelenium)
library(rvest)
remDr <- remoteDriver(remoteServerAddr="localhost" , port=4445 , browserName="chrome")
#크롬 실행 
remDr$open() 
remDr$navigate("http://naver.com")
# 소스 읽어오기
html <- remDr$getPageSource()[[1]] 
html <- read_html(html)
# 실시간 검색어 읽어오기
sear <- html_nodes(html,"span.ah_k")
text <- html_text(sear) 
result <- NULL
for(search in text){
  print(search)
  remDr$navigate("http://naver.com")
  # sys.sleep() - 일정시간만큼 프로세스 지연
  Sys.sleep(2)
  # findElement() 함수를 이용하여 특정위치를 지정, css selector, xpath 둘중 하나 사용가능 
  webElem <- remDr$findElement(using="css","[name='query']")
  # sendKeysToElement() 입력란에 아이디와 비밀번호 입력하기
  webElem$sendKeysToElement(list(search , key="enter"))  
  Sys.sleep(2)
  webElem <- remDr$findElements(using="css","dd.lst_relate._related_keyword_list > ul a")
  t <- sapply(webElem , function(x){x$getElementText()})
  t <- unlist(t)
  result <- list(result , t)
}
result
