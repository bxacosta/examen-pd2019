:: Nota: Este escript se realizo en un SO Linux no se ha probado en Windows

java -jar config-server\build\libs\config-server-0.0.1-SNAPSHOT.jar
java -jar registry-server\build\libs\registry-server-0.0.1-SNAPSHOT.jar
java -jar gateway-server\build\libs\gateway-server-0.0.1-SNAPSHOT.jar

java -Dserver.port=8081 -jar app01\build\libs\app01-0.0.1-SNAPSHOT.jar
java -Dserver.port=8082 -jar app01\build\libs\app01-0.0.1-SNAPSHOT.jar
java -Dserver.port=8083 -jar app01\build\libs\app01-0.0.1-SNAPSHOT.jar

java -jar app02\build\libs\app02-0.0.1-SNAPSHOT.jar


