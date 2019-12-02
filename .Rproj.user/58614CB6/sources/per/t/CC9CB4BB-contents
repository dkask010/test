rm(list=ls())


# 한글자연어 처리를위한 패키지 (Korea Natural Language Process)
library(KoNLP)

text <- readLines("son.txt")
nouns <- extractNoun(text) # extractNoun 명사/형용사 구별해서 list로 리턴!
nouns <- unlist(nouns) # 리스트를 벡터로 전환
nouns <- gsub("[^가-힣]","",nouns) # 한글을 제외한 문제 공백("") 변환
nouns <- Filter(function(x){nchar(x) >= 2} , nouns) # Filter 함수를 활용, 한글자 삭제

word <- table(nouns) # 벡터의 중복된 문자 수를 나타낸다.

head(sort(word , decreasing = T), 100)
library(wordcloud2) # 중복된 글자 횟수가 가장많으면 글씨체가 가장 크다.

wordcloud2(word , size=0.5)

# 카카오 대화내용 가져와서 해보기
text <- readLines("kakao.txt")
text <- iconv(text, "UTF8") # 인코딩 처리

text <- na.omit(text) # 결측값NA가 들어가있는 행 전체를 삭제
head(text, 20)

nouns <- extractNoun(text) #형용사
nouns <- unlist(text) #명사

nouns <- gsub("(201).+(-)" ,"", nouns) # 날짜 삭제
nouns <- gsub("\\[,*?\\]" ,"", nouns) # 카카오 대화 내용 대괄호[] 내용 삭제
nouns <- gsub("[ㄱ-ㅎ]" ,"", nouns)
nouns <- gsub("[ㅏ-ㅣ]" ,"", nouns)
nouns <- gsub("[ㅜ,ㅠ]" ,"", nouns)
nouns <- gsub("[:punct:]" ,"", nouns)
nouns <- gsub("[^가-힣]","", nouns)

nouns <- Filter(function(x){nchar(x) >= 2} , text) # Filter 함수를 활용, 한글자 삭제
word <- table(nouns) # 벡터의 중복된 문자 수를 나타낸다.
word <- head(sort(word , decreasing = T), 100)


