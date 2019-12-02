rm(list=ls())
# 데이터셋 저장 및 로딩

# setwd("d:/R/") #작업 디렉토리 설정
ls() # 생성된 데이터셋 목록

save(sales , emp , file="test.data") # 데이터셋을 파일로 저장한다.

rm(list=ls()) #생성된 데이터셋 전체 삭제

load("test.data")

name <- c("사과" , "딸기" , "수박")
price <- c(1800 , 1500, 3000)
qty <- c(24, 38, 13)
sales <- data.frame(제품=name, 가격=price, 판매량=qty)

write.csv(sales , file="sales.csv") # csv 파일로 저장

# read.table -- data.frame 읽는다
text_data <- read.table("testdata.txt")
text_data2 <- read.table("testdata.txt" ,  header = T)

# scan -- vector 로 읽는다. (많이쓰임)
test_data3 <- scan("testdata.txt" , what = "")
class(text_data)
class(test_data3)
