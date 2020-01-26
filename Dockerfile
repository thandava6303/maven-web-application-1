FROM tomcat:latest
COPY target/maven-web-application.war /usr/local/tomcat/webapps
#ENTRYPOINT /root/apache-tomcat-8.5.50/bin/startup.sh && bash


