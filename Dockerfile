# FROM maven:3.8.3-jdk-11
# WORKDIR /app
# COPY . .
# RUN mvn package
FROM tomcat:9
# COPY --from=0 /app/target/*.war /usr/local/tomcat/webapps/
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
