# 생성된 데이터셋 모두 삭제
rm(list=ls()) # 모든 데이터셋 삭제

# 문자 관련 함수
str <- c(letters[1:5])
#paste() 문자 연결
paste(str[1] , str[2])
str1 <- paste(str[1] , str[2],"java",str[3])
str2 <- paste(str[1] , str[2],"java",str[3], sep = "-") # sep - 문자 문자 사이
str3 <- paste(str, collapse = "%") # 벡터 인덱스 사이
help("paste")

# substring()
substring("abcdefghijklmn" , 2,5) # 문자열중 , 몇번쨰부터 몇번째까지의 사이값
substring("abcdefghijklmn" , 2)
substring("abcdefghijklmn" , 2:5)

strsplit(str2 , "-") # 문자열 분할
nchar(str) # 문자수
tolower(str2) # 소문자 변환
toupper(str2) # 대문자 변환
