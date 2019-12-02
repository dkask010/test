#factor 범주형데이터 (카테고리 분류 작업에 사용)
#vector 대처 가능 하기때문에 자주 사용되지 않는다.
rm(list=ls())
x <- c(1,1,2,2,3,3,4,4,5,5)
f1 <- factor (x) # 범주형 유니코드로 값을 나타낸것
f2 <- factor (x , levels = c(1,3,5))

x2 <- c(letters[1:3] , letters[1:5])
f3 <- factor (x2 , levels = c("a" , "b") ,ordered = T) # 문자정렬
levels(f3) # 레벨 확인

is.factor(f3) # 펙터인지 확인(맞으면 TRUE, 틀리면 FALSE)
summary(f3) # 주요정보를 확인하는것

f4 <- factor(x2 , levels = c("a" , "b" , "c") , labels =c("상","중","하")) # 레벨과 라벨의 수는 같아야한다.
summary(f4)
