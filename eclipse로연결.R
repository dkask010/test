rm(list=ls())
# 데이터베이스
install.packages("DBI")
install.packages("RJDBC")
# r을 이용한 네트워크연결
install.packages("Rserve")

library(Rserve)
Rserve(args="--RS-encoding utf8")

R.version.string # 설치된 R버전 확인

letters[1:10]
x <- c(1:10)
y <- x+10
y

d <- data.frame(LETTERS[1:10], c(1:10), stringsAsFactors = F)
