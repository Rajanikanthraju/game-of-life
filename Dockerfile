#FROM maven:3-openjdk-8 AS appbuilder
#RUN git clone https://github.com/Rajanikanthraju/game-of-life.git && cd game-of-life && mvn clean package

#building deployment image
FROM tomcat:8.5.82-jdk8-temurin-focal 
LABEL author=Rajanikanth
COPY target/*.war /usr/local/tomcat/webapps/*.war
EXPOSE 8080
