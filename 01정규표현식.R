#기본 정규 표현식 사용
word <- "JAVA javascript 가나다 123 *&^%$"
text <- c("Game" , "GAME" , "game" , "gAME" , "Tetris1" , "game" , "teris5") 

grep("game" , text) # game 문자가 text 인덱스 번호
grep("game" , text , ignore.case = T) # ignore.case = T 대소문자 구별없이
grep("^g" , text) # ^g 시작하는문자
grep("e$" , text) # e$ 끝나는 문자
grep("..m" , text)
grep(".e" , text)
grep("\\d" , text) # \\d 숫자가 들어간 문자 찾기
grep("[2-5]" , text) # 2~5사이 숫자가 들어간 문자
grep("[[:upper:]]" , text) # 대문자를 포함한 문자

# 가장 많이 쓰이는 용어
word <- "JAVA javascript 가나다 123 *&^%$"
gsub("A" , "-" , word) # A -> - 변경
gsub("[가-힣]" , "" , word) # 한글을 다 없애는것
gsub("[^가-힣]" , "" , word) # 한글을 제외한 나머지를 출력하는것
gsub("[[:alpha:]]" , "" , word) # 모든 문자
gsub("[[:alnum:]]" , "" , word) # 모든 문자 / 숫자
gsub("[[:punct:]]" , "" , word) # 특수문자 없애는것
gsub("[[:space:]]" , "" , word) # 공백 없애는것
gsub("[[:graph:]]" , "" , word) # 문자 / 숫자 / 특수문자 다 없애는것
