# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt update -y && apt upgrade -y && apt-get install openjdk-21-jdk -y && apt install maven -y

RUN mvn clean package

EXPOSE 8080

# This should not be changed
CMD ["java","-jar","spring-boot-web.jar"]
