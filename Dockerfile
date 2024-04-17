FROM ubuntu
RUN apt update
RUN apt install openjdk -8-jdk -y
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.88/bin/apache-tomcat-9.0.88.tar.gz
RUN tar -xvzf apache-tomcat-9.0.88.tar.gz
RUN  mv apache-tomcat-9.0.88 tomcat
WORKDIR /opt
COPY target/welcomeapp.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh","run"]
EXPOSE 8080
