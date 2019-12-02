# 제어문 (for,switch,while,if)

x <- runif(1) # runif(1) 0~1 사이의 랜덤값 발생

if( x > 0){
  print("0보다 크다.")
}else{
  print("작다.")
}

# ifelse(조건 , T , F) 자바-삼항연산자
ifelse(x > 0 , T , F)

# switch(값 , 실행문 , 실행문......)
switch(1 , "aaa" , "bbbb")
switch(2 , {"aaa"} , {"bbbb"} , {"ccc"})
switch(2 , foo={"aaa"} , bar={"bbbb"})
switch("foo" , foo={"aaa"} , bar={"bbbb"})

switch("aaa" , "aaa"= , "bbbb"=,"ccc"=,"korea")

# for , while , repeat(무한반복문)

for(i in seq(1,10,2)){
  print(i)
}

for(i in 1:9){
  for(j in 1:9){
    print(i*j)
  }
}

for(i in 2:9){
  for(j in 1:9){
    cat(i , "x" , j , "=" , i*j , "\t")
  }  
  cat("\n")
}

for(m in month.name){
  print(m)
}

for(m in month.abb){
  cat(m, " ")
}

#합계
sum <- 0
for(i in 1:10){
  sum <- sum+i
}
sum

# 무한반복, 증감식 값 넣어주면 정지
i <- 0
while(i <= 10){
  print(i)
  i <- i+1
}

repeat{
  print("hello")
}
i <- 0
repeat{
  i <- i+1
  print(i)
  if(i > 10){
    break
  }
}