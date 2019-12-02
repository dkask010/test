rm(list=ls())
#1
df1 <- data.frame(x=c(1:5) , y=seq(2,10,2))
#2
df2 <- data.frame(cal1=c(1:5), col2=c(letters[1:5]) , col3=c(6:10))
#3
L1 <- list(name='scott', sal=3000)
result1 <- filter(3000 ,L1$sal*2)
#4
L2 <- list(c("scott"), c(100,200,300))
L2 <- list('scitt' , c(100,200,300))
#5
name <- c("사과" , "딸기" , "수박")
price <- c(1800 , 1500, 3000)
qty <- c(24, 38, 13)
sales <- data.frame(제품=name, 가격=price, 판매량=qty)

emart <- data.frame(
제품=c("사과","딸기","수박"),
가격=c(1800,1500,3000),
판매량=c(24,38,13)
)
emart
#6
mean(테이블명$가격)
mean(테이블명$판매량)

#7
L3 <- list(c(3,5,7), c('A','B','C'))

L3[2][1] <- 'alpha'


#8
L4 <- list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))
L4[[1]] <- L4[[1]]+10 # 리스트 인덱스 접근 방식
L4[[1]]

L4$alpha <- L4$alpha+100 # 리스트 라벨 접근 방식

#9
L5 <- list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))
L5_vec <- unlist(L5)
mean(L5_vec)

#10
name <- c('Potter', 'Elsa', 'Gates', 'Wendy', 'Ben')
gender <- factor(c("F", "M", "F", "M", "F"))
math <- c(85, 76, 99, 88, 40)
df3 <- data.frame(name,gender,math)
# a
df3 <- cbind(df3, stat=c(76,73,95,82,35))
# b
score <- df3$math + df3$stat
# c   ifelse(조건식,TRUE,FALSE)
grade <- ifelse(score >= 150 , "A")
ifelse(score >= 100, "B", "C")
#11 (emp)
emp <- read.csv("emp.csv")
View(emp)

#12 emp에서 3,4,5 행만 출력한다.
emp[3:5 , ]

#13 emp에서 ename컬럼만 출력한다.
emp$ename
emp['ename']

#14 emp에서 ename 과 sal컬럼만 출력한다.
emp[ , c('ename','sal')]

#15 업무가 SALESMAN 인 사원의 이름, 월급, 직업을 출력한다.
emp[emp$job=="SALESMAN" , c("ename","sal", "job")]

#16
emp[ emp$sal >= 3000 , c("ename", "sal" )]

#17
emp[ emp$job != "ANALYST", c("ename","sal","job") ]

#18
emp[ emp$job == "ANALYST" | emp$job == "SALESMAN" , c("ename","job")]

install.packages("rvest")
# 메뉴 상단 바에 Tools -> install.packages -> rvest 입력


