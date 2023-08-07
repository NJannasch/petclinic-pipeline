FROM ibm-semeru-runtimes:open-17.0.7_7-jre-focal
ARG JAR_FILE=spring-petclinic/target/*.jar
WORKDIR /app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]
