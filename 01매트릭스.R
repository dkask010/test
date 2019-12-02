# matrix - 자바의 2차원 배열과 같다.

rm(list=ls())

m1 <- matrix(1:12)
m2 <- matrix(1:12 , nrow = 3) # 3열
m3 <- matrix(1:12 , ncol = 3) # 3행
m4 <- matrix(1:11 , ncol = 3) # 3행
m5 <- matrix(1:10 , ncol = 3) # 3행

m6 <- matrix(1:12 , nrow = 3 , byrow = T) # byrow = 열부터 값을 대입 한다.

class(m1) # 데이터셋 타입 확인
mode(m1) # 데이터값 타입 확인

v1 <- c(1,2,3)
v2 <- c(4,5,6)
v3 <- c(7,8,9)
m7 <- rbind(v1,v2,v3) # 가로
m8 <- cbind(v1,v2,v3) # 세로

v4 <- c(10,11,12)
m9 <- cbind(m8,v4)
m9 <- rbind(m9, c(1,2,3,4))

m10 <- matrix(1:10 , nrow=2 , byrow=T)  
rowSums(m10) # 열의 합
colSums(m10) # 행의 합
rowMeans(m10) # 열의 평균
colMeans(m10) # 행의 평균
sum(m10) # 전체 합계
mean(m10) # 전체 평균

t(m10) # 행과 열을 바꿔준다.


rownames(m10) <- c("a","b") # 행 이름 변경
colnames(m10) <- c("A","B","C","D","E") # 열 이름 변경

# matrix 인덱스 [0,0]
m10["a",]
m10[1,]
m10[, "B"]
m10[ , 2]
m10[1,1]
m10["a","A"]
m10[-1 , ]

length(m10) # 데이터의 수
ncol(m10) # 가로 수
nrow(m10) # 세로 수


