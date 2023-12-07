FROM ubuntu:18.04
RUN apt update && apt install default-jre -y
WORKDIR /opt/
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz .
RUN tar -xf apache-tomcat-9.0.78.tar.gz
RUN mv apache-tomcat-9.0.78 tomcat1
COPY Amazon/Amazon-Web/target/Amazon.war tomcat1/webapps
EXPOSE 8080
CMD ["tomcat1/bin/catalina.sh","run"]
