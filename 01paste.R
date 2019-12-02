rm(list=ls())


print(v1)
print(v1 , print.gap = 10)
print(v1 , print.gap = 5 , quote = F)

v1 <- c("사과" , "바나나" , "포도")
paste(1,2,3,4)
paste("hello" , "java" , "R")
paste(v1) # 벡터는 개별적으로 인식한다.

paste(c("첫","두","세","네","다섯") ,rep("번째" , 5))

paste(c("첫","두","세","네","다섯") ,rep("번째" , 7))
paste(c("첫","두","세","네","다섯") ,rep("번째" , 3))

paste(1,2,3,4)
paste(1,2,3,4, sep="-")
paste(1,2,3,4, sep="")
paste0(1,2,3,4)


# 벡터를 넣었을때
paste(v1 , sep = "" , collapse = "_")
paste(v1 , collapse = "")
print(paste())

cat(100)
cat(100,200,300)
cat(v1)
cat(v1 , sep="-")
cat("R","은 통계분석"," 전용 언어 입니다.","\n" ,"hello")