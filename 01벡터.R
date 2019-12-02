#vector - 1차원배열 ( 자바의 배열과 같다.)
# 위치 인덱스 = 1로 시작 (자바는 0부터시작)

v1 <- c(10,20,30,40,50,60,70,80,90);
v1[1]
class(v1) # 데이터셋의 데이터타입 확인
v2 <- c(1,2,3,4,5,"hello")
v3 <- c(TRUE, FALSE , T , F)
V4 <- 1:10 # 1~10 까지 ..

V5 <- seq(1, 10,2) # seq(from, to, by)
v6 <- seq(from=10, to=100, by=10) # 몇부터 몇까지 몇 간격으로...

#rep() - 같은수 생성
v7 <- rep(0, 5) # 같은걸 몇개 만들어라..
v8 <- rep(1:3 , 3) # 몇에서 몇까지 몇번반복해라...
v9 <- rep(1:3, each=3) # 1~3까지의 수를 순서대로 반복해서 사용..

# c() 문자 백터 생성
v10 <- c("가", "나", "다")
v11 <- c("java", "R")
v12 <- c(v10, v11)

# 내장 데이터셋 활용
v13 <- LETTERS # 알파벳 대문자
v14 <- letters # 알파벳 소문자

v15 <- month.name # 1~12월에 대한 날짜
v16 <- month.abb # 1~12월에 대한 날짜(단축,줄임말)

# 내장 데이터셋 확인
package_dataset_list <- data(package=.packages(all.available = T))
package_dataset_list

v1[2]

# - 마이너스 인덱스 ( 제외하고 나머지를 나타낸다 )
v1[-1]
v1[-1 : -5]
v1[1:3]
v1[c(T,F,T,F,T,F,T,F,T)] # T = 홀수 F = 짝수

rm(list=ls()) # 전체 데이터셋 삭제

num1 <- c(90, 75, 80, 62, 85)
num1 + 100 # 벡터의 각각 요소에 연산 한다.
num1[1]+100 # 지정된 요소만 연산

# 3개다 결과는 똑같다.
num1 > 80
num1[ num1 > 80]
num1[c(num1 > 80)]

num2 <- c(90,75,80,NA,62,85)
sum(num1)
sum(num2, na.rm=T) # na.rm=T 격측치 제외 

min(num2, na.rm=T) # 최대값
max(num2, na.rm=T) # 최솟값                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
mean(num2, na.rm=T) # 평균값

order(num2) # 정렬
num2[order(num2)]

sort(num2 , decreasing = T) # 정령 decreasing = T 내림차순
rev(num2) # 인덱스 역순 출력

length(num2) # 벡터의 데이터 수

x <- c(1,4,6,8,9)
replace(x, 1 , 10) #x의, 첫번째 인덱스를, 10으로변경...
replace(x, c(1,2), c(11,22)) # x의 첫번째 두번째 인덱스를, 11,22로 변경

str1 <- c("java" , "jsp")
str2 <- c("R" , "framework")
str3 <- append(str1 , str2 , after=1)
str4 <- c(str1 , str2)



c(1,2) + c(4,5) # 각 위치 인덱스별로 계산.
c(1,2,3) == c(4,5)

#집합 연산
x <- c(1,2,3)
y <- c(4,2,8)
x == y

union(x,y) #합집합
intersect(x,y) #교집합
setdiff(x,y) #차집합

z <- c(1,2,3,4,5,6,7,8)
unique(z) # 중복문자는 한번만 나타낸다.



x <- c(10,20)
# 수학 함수
# sin(x)  cos(x)  tan(x)
sin(x)
cos(x)
tan(x)

log(x)
log10(x)
log2(x)
sqrt(x) # 루트

#실수 연산자
trunc(x) # 소숫점이하 버림
abs(x) # 절대값
round(x) # 반올림
round(x,digits = 1) # 소숫점 한자리만 남긴다

