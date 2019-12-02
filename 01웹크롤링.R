rm(list=ls())
# install.package("rvest") # 브라우저 크롤링에 필요한 패키지
library("rvest")
url <- "http://movie.naver.com/movie/point/af/list.nhn?&page=1"

text_html <- read_html(url, Encoding="CP949")

# <> <> 태그와 태그 사이의 내용을 찾아주는것 (html_text())

# 댓글남긴 아이디
nodes <- html_nodes(text_html , ".color_b")

title <- html_text(nodes)
# 영화 평점클릭시..
nodes <- html_nodes(text_html ,  ".title > div > em")
point <- html_text(nodes)

# 댓글 내용
nodes <- html_nodes(text_html , "td.title")
review <- html_text(nodes)


# 복습 (1~10페이지까지 for문으로 가져오는방법)
# install.packages("rvest") # 브라우저 크롤링에 필요한 패키지 
library(rvest)

url <- "https://movie.naver.com/movie/point/af/list.nhn?&page="
result <- NULL
for(i in 1:10){
  site <- paste(url,i,sep="")
  text_html <- read_html(site , encoding="CP949")
  nodes <- html_nodes(text_html , ".color_b");
  title <- html_text(nodes)
  
  nodes <- html_nodes(text_html, ".title > div > em")
  point <- html_text(nodes)
  
  nodes <- html_nodes(text_html , "td.title")
  review <- html_text(nodes)
  review <- gsub("\t","",review)
  review <- gsub("\n","",review)
  review <- gsub("신고","",review)
  df <- cbind(title,point,review)
  result <- rbind(result , df)
}
result
write.csv(result,"naver_moview.csv",row.names = F)


# 전체페이지 가져오기
library(rvest)

url <- "https://movie.naver.com/movie/point/af/list.nhn?&page="
result <- NULL
i <- 1
repeat{
  site <- paste(url,i,sep="")
  
  tryCatch(
  text_html <- read_html(site , encoding="CP949") ,
  error=function(e){
    print("종료..!!")
    break
    }
  )
  if(flag == FALSE){
    break
  }
  nodes <- html_nodes(text_html , ".color_b");
  title <- html_text(nodes)
  
  nodes <- html_nodes(text_html, ".title > div > em")
  point <- html_text(nodes)
  
  nodes <- html_nodes(text_html , "td.title")
  review <- html_text(nodes)
  review <- gsub("\t","",review)
  review <- gsub("\n","",review)
  review <- gsub("신고","",review)
  df <- cbind(title,point,review)
  result <- rbind(result , df)
}
result
write.csv(result,"naver_moview.csv",row.names = F)