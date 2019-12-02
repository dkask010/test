library(RSelenium)
library(rvest)
remDr <- remoteDriver(remoteServerAddr="localhost" , port=4445 , browserName="chrome")

#크롬 실행 
remDr$open() 

# URL 이동
remDr$navigate("http://naver.com")
#네이버 로그인
loginBtn <- remDr$findElements(using="css", "#account > div > a > i") 
sapply(loginBtn,function(x){x$clickElement()})

id <- remDr$findElement(using="css selector", value="#id") 
pw <- remDr$findElement(using="css selector", value="#pw") 

id$sendKeysToElement(list("ID")) 
pw$sendKeysToElement(list("PW")) 

# 로그인 버튼 설정  #frmNIDLogin > fieldset > input
btn <- remDr$findElement(using="css", '#frmNIDLogin > fieldset > input') 
# 로그인 버튼 클릭 
btn$clickElement() 

# 브라우저 닫기 
remDr$close() 