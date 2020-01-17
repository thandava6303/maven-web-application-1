FROM tomcat
#ADD  http://ec2-18-209-21-119.compute-1.amazonaws.com:8081/artifactory/webapp/#/artifacts/browse/tree/Properties/libs-release-local/com/mt/maven-web-application/1.1.0/maven-web-application-1.1.0.war
COPY target/maven-web-application.war root/apache-tomcat-8.5.50/webapps


