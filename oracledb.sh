docker pull container-registry.oracle.com/database/express:latest

docker container create `
   -it `
   --name oracle-test `
   -p 1521:1521 `
   -e ORACLE_PWD=welcome123 `
   container-registry.oracle.com/database/express:latest

sqlplus system/welcome123@//localhost:1521/XEPDB1
