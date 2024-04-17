FROM ubuntu
RUN apt update -y
RUN apt install openjdk-8-jdk wget -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz
RUN tar -xvzf apache-tomcat-9.0.88.tar.gz
RUN mv apache-tomcat-9.0.88 tomcat
COPY target/welcomeapp.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/catalina.sh","run"]



