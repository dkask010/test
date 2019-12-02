rm(list=ls())

# 네이버 뉴스 속보 
# https://news.naver.com/main/list.nhn?mode=LSD&mid=sec&sid1=001&date=20191127&page=1

# 뉴스 제목
# #main_content > div.list_body.newsflash_body > ul.type06_headline > li:nth-child(1) > dl > dt > a

# 언론사
# #main_content > div.list_body.newsflash_body > ul.type06_headline span.writing

library(rvest)
url <- "https://news.naver.com/main/list.nhn?mode=LSD&mid=sec&sid1=001&date=20191127&page=1"
text_html <- read_html(url ,encoding="CP949")

node <- html_nodes(text_html ,"ul.type06_headline dt:not(.photo) > a")

# 해당 a태그의 속성을 빼온것
href <- html_attr(node, "href")

title <- html_text(node)
title <- gsub("\t","",title)
title <- gsub("\n","",title)
title <- gsub("\r","",title)

node <- html_nodes(text_html ,"ul.type06_headline span.writing")
news <- html_text(node)

# 시간
#main_content > div.list_body.newsflash_body > ul.type06_headline > li:nth-child(1) > dl > dd > span.date.is_new

library(rvest)
url <- "https://news.naver.com/main/list.nhn?mode=LSD&mid=sec&sid1=001&date=20191127&page=1"
text_html <- read_html(url , encoding = "CP949")

node <- html_nodes(text_html , ".span.date.is_new")

node <- html_nodes(text_html , "")
#main_content > div.list_body.newsflash_body > ul.type06 > li:nth-child(10) > dl > dd > span.date.is_new




