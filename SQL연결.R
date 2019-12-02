library(DBI) # SQL 실행
library(RJDBC) # DB 연결

dri <- JDBC("oracle.jdbc.driver.OracleDriver","ojdbc6.jar")
conn <- dbConnect(dri , "jdbc:oracle:thin:@nullmaster.iptime.org:1521:xe","git01","git01")
dbListTables(conn)

# 동일한 방법
table_test <- dbReadTable(conn , "EMP")
table_emp <- dbGetQuery(conn, "select * from emp")

table_emp$EMPNO

# values() 안에 값넣기.
dbExecute(conn , "insert into test values()")
dbSendUpdate(conn, "insert into test values()")

# 다 사용하고 마지막에 연결끊기
dbDisconnect(conn)
