FROM tomcat
COPY target/maven-web-application.war root/apache-tomcat-8.5.50/webapps
ENTRYPOINT /root/apache-tomcat-8.5.50/bin/startup.sh && bash


