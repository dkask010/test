rm(list=ls())
# C:\R\selenium서버프로그램\selenium서버프로그램\selenium-server-standalone-master
#> java -jar selenium-server-standalone.jar -port 4445
library(RSelenium)
library(rvest)

remDr <- remoteDriver(remoteServerAddr="localhost" , port=4445 , browserName="chrome")

remDr$open()

remDr$navigate("comic.naver.com/comment/comment.nhn?titleId=701701&no=640")

# 전체댓글보기 클릭
all <- remDr$findElements(using="css selector" , "#cbox_module > div > div.u_cbox_sort > div.u_cbox_sort_option > div > ul > li.u_cbox_sort_option_wrap.u_cbox_sort_option_on > a > span.u_cbox_sort_label")
sapply(all , function(x){x$clickElement()})
Sys.sleep(1)

review <- remDr$findElements(using="css selector" , "ul.u_cbox_list span.u_cbox_contents")
rv <- sapply(review , function(x){x$getElementText()})
rv <- unlist(rv)

result <- c(rv)

# 댓글 페이지 가져오기
for(i in 1:2){
  nextPage <- paste("#cbox_module > div > div.u_cbox_paginate > div > a.u_cbox_page(",i,") > span" ,sep="")
  nP <- remDr$findElements(using="css selector" , nextPage)
  sapply(nP , function(x){x$clickElement()})
  
  review <- remDr$findElements(using="css selector" , "ul.u_cbox_list span.u_cbox_contents")
  rv <- sapply(review , function(x){x$getElementText()})
  rv <- unlist(rv)
  result <- c(result , rv)
  
  Sys.sleep(1)
}
result

