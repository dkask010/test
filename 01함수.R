# function 함수 실행
# 함수의 이름은 모두 달라야한다. 자바에서의 오버로딩 개념이 없다.

f1 <- function() { print("hello")}
f1() # 함수 호출

f2 <- function(num){
  print("hello")
  print(num+100)
}
f2(100)

f3 <- function(num=100){
  print(num+100)
}
f3()
f3(200)

f4 <- function(num=100 , num2){
  print(num)
  print(num2)
}
f4( , 400)

# 한번에 여러개의 값을 줄때 (점은 매개변수와 상관없다.)
f5 <- function(...){
  data <- c(...)
  print(data)
}
f5(c(1:5))
f5(1,2,3,4,5)

f6 <- function(num){
  return(num+100)
}
r <- f6(500)
r

# 데이터,매개변수 선언.
f7 <- function(data , opt){
  switch(opt ,
         SUM= , Sum=,sum=sum(data),
         MAX= , Max=,max=max(data),
         opt=data,"NULL"
  )
}
f7(1:10 , "sum")


f8 <- function(month){
  switch(month, "12"=,"1"=,"2"="겨울",
         "6"=,"7"=,"8"="여름")
}
f8("12")
