rm(list=ls())
#1 빅데이터 시각화
#2 목표데이터 설정
#3 데이터 수집
#4 데이터 전처리과정
#5 시각화 방법을 설정
#6 시각화 대상

# 문자셋 인코딩 - EUC-KR , UTF-8 , ansi , ms949 , ksc5601 , ls08859-1
# unicode char = utf-16 / utf-8

text1 <- scan("text1.txt", what="")
text2 <- scan("text2.txt", what="")
text3 <- scan("text2.txt", what="" , encoding = "UTF-8")
text4 <- readLines("text2.txt", encoding = "UTF-8")

no <- c(1,2,3,4)
name <- c("Apple", "Banana", "Peach", "Berry")
prices <- c(500,NA,NA,50)
qty <- c(5,2,7,9)
data <- data.frame(No=no ,Name=name, Price=prices, Qty=qty)

write.table(data , "data1.txt")
write.table(data , "data2.txt" , row.names = F) # 열 번호 자동으로 생성
write.table(data , "data3.txt" , row.names = F , quote = F) # 겹따옴표 삭제
write.table(data , "data3.txt" , row.names = F , quote = F , append = T)
write.table(data , "data3.txt" , row.names = F , quote = F , na="0") # na를 다른값으로 변경

# 패키지설치 - 추가 배포되는 API 설치
# 자바에서 (.jar) 파일을 배치해서 사용하는 방식과 같은 개념
install.packages("rvest")
install.packages("wordcloud2")
install.packages("KoNLP")
install.packages("dplyr")
install.packages("R6")
install.packages("httr")
install.packages("RSelenium")


