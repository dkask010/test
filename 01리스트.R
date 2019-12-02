# List
rm(list=ls())
list1 <- list(name='java', address='seoul', num=100)
list1
list1$name
list1$address
list1$num
list1[1:2]
# 값 대입해서 변경
list1$name <- 'jsp'
list1$name

v1 <- unlist(list1) # unlist() 리스트 -> 벡터 변환
class(v1)
v1

list2 <- list(a=1:3 , b="web pro" , c=pi , d=list(1:5))
list2[[1]][2]
list2$d[[1]][3] # 잘 안쓰인다.

x <- array(c(5:10) , dim=c(2,3))
class(x)

sum(x[2, ]) # 행(가로) 합
apply(x , 1 , sum) # apply(데이터셋 , [1/2] , 연산), 1=행(가로)
rowSums(x)
apply(x , 2 , sum) # 2=열(세로)
colSums(x)
