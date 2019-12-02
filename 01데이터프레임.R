# data.frame 컬럼(세로)별로 다른 타입의 데이터를 묶을수있다.
rm(list=ls())

v1<- c(1:4)
v2 <- c(letters[1:4])
v3 <- seq(100,400,100)
df1 <- data.frame(v1,v2,v3)
df1 <- rbind(df1, c(5,"e",500)) # 문자 factor 정보로 설정된다. NA

# stringsAsFactors = F 펙터로 변환하지 않는다. 값에 정수와 문자형이 같이있어 NA 로 표현되고있다.
df2 <- data.frame(v1,v2,v3 , stringsAsFactors = F)
df2 <- rbind(df2 , c(5,"e",500))

df2[1][1]
df2[1,1]
df2[1, ]
df2[ , 1]
class(df2[1 , ])
class(df2[ , 1])

df2$v1
df2$v2

df3 <- data.frame(java=v1, jsp=v2, spring=v3)


# 예제1

# no = 5 추가
# 행 (세로) = 판매금액

# 오른쪽 끝열에 price, qty의 합계가 추가되게 만들기 + 아래에 상품하나 새로 추가시켜보기
v1 <- c(1:4)
v2 <- c("apple" , "banana" , " peach" , "berry")
v3 <- c(500,200,200,50)
v4 <- c(5,2,7,9)

emart <- data.frame(no=v1, name=v2, price=v3, qty=v4, stringsAsFactors = F)

emart <- cbind(emart, sum=(emart$price*emart$qty))


# 예제2 price 가 100 이상 과일의 name , qty 를 출력 하세요...!!!

emart <- rbind(emart , c(5,NA,100,3))
emart[ emart$price > 100]

emart[ , c("name" , "qty")]
emart[ , c(1,2)]

emart$name <- "test" # 해당 컬럼에 전부 원하는값으로 변경하기
emart$name <- "java"

# 실습파일 - score.csv 
# read.csv가 제일많이 쓰인다.
ex <- read.csv("score.csv" , header = T)
View(ex)
class(ex)

# 수학, 영어, 과학 각각의 전체 평균 점수를 마지막 행에 추가
ex1 <- rbind(ex, c(21,0 , mean(ex$math) , mean(ex$english), mean(ex$science)))

# ex2 -- ex1 마지막에 추가된 21번을 제외하고 대입

ex2 <- ex1[-21 , ]
ex2 <- ex1[-length(ex1$id) , ]

str(ex)

#1) 21행 <- 수학, 영어, 과학의 평균 추가
ex1 <- rbind(ex, c(21,0 , mean(ex$math), mean(ex$english), mean(ex$science)))
#2) score1 변수에 21행을 삭제한 결과를 대입
ex2 <- ex[-21 , ]
#3) 각 행의 수학,영어,과학 3과목 합 열 추가
ex3 <- cbind(ex, sum=(ex$math+ex$english+ex$science))
View(ex3)
ex1 <- cbind(ex, c("sum",0 , rowSums(ex$math) , rowSums(ex$english), rowSums(ex$science))) 
#4) 각 행의 수학,영어,과학 3과목 평균(소숫점버림) 열추가
ex3 <- cbind(ex3, mean=floor(ex3$sum/3))
# trunc() 소수점버림, cbind 열추가
#5) 평균점수로 내림차순 정렬
ex4 <- ex3[order(-ex3$mean),]
View(ex4)
ex2 <- rbind(ex1, c(21,0 , mean(ex$math), mean(ex$english), mean(ex$science), decreasing = T))

