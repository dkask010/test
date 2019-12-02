# 예외처리
# try() , tryCatch()
try({
  print("hello R")
  test
})

# silent = T 에러메세지를 생략한다.
try({
  print("hello R")
  test
},silent = T)

tryCatch({print("hello R")
      test
      }, 
    arror=function(e)print("error ~~~!!!") ,
    warning = function(w)print("warning~~!!"),
    finally = cat("finally..~~~!!")
)

# tryCatch({실행로직} , error={} , warning={} , finally={} )

install.packages("wordcloud2")
install.packages("KoNLP")