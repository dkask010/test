rm(list=ls())

a <- c(LETTERS[1:5])
b <- c(10,12,15,13,NA)
c <- c(5,3,4,2,1)
d <- c(100,90,NA,95,115)
data1 <- data.frame(a,b,c,d)
data2 <- data.frame(a,b,c,d, stringsAsFactors = F)
class(data1$a)
class(data2$a)
class(data1)
class(data2)

data1[1][1]
data2[2][1]
# 3개다 같은것
data1[1,1]
data2[[1]][1]
data1$a[1]

summary(data1)

# data1 안의 몇 열 데이터중 13이 맞는지 아닌지 확인
data1$b == 13
# data1 에서 13이라는 조건이 맞는것만 출력
data1[data1$b == 13 , ]

subset(data1 , data1$b == 13)

# 펙터로 변환시키지않고 문자로 바로 출력 (c말고 i로 만들었을경우)
e <- I(LETTERS[1:5])
data3 <- data.frame(e,b,c,d)
class(data3$e)
data3 <- rbind(data3 , c("K",17,7,77))
data3 <- cbind(data3 , e=c(T,F,T,T,F,T))

# 안에 들어있는 데이터를 변경시키는방법
data3 <- transform(data3 , c='hello')
# 컬럼명 변경
colnames(data3) <- c('aa','bb','cc','dd','ee')

# 벡터로 결과를 출력
v1 <- data3[ , 3]
class(v1)
# drop=F 데이터프레임 / drop=T 벡터
v2 <- data3[ , 3 , drop=F]

