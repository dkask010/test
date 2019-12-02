#
library(wordcloud2)
wordcloud2(demoFreq)

wordcloud2(demoFreq , size=0.5)

#diamond , cardioid , triangle-forward , triangle , pentagon , star
wordcloud2(demoFreq , size=0.5 , shape = "star")

# 모양을 직접 지정할때 - 배경이 없는 검은 이미지 - png / jpg 파일만 가능
wordcloud2(demoFreq , size=0.5 , figPath ="logo.png")


wordcloud2(demoFreq , size=0.5 , color = "random-light")
wordcloud2(demoFreq , size=0.5 , color = c("pink","blue")) 

# 배경색 지정
wordcloud2(demoFreq , size=0.5 , shape="star" , backgroundColor = "black")


wordcloud2(demoFreq , size=0.5 , minRotation = pi/2 , maxRotation = pi/4)
# rotateRatio=0 단어는 회전할 확률을 나타낸다.
wordcloud2(demoFreq , size=0.5 , minRotation = pi/2 , maxRotation = pi/4 , rotateRatio=0.5)
