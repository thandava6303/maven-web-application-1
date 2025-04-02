node {
     def maven = tool name: 'maven-3.9.9'
     
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '5')), pipelineTriggers([pollSCM('* * * * *')])])
    
     stage ('checkout the code'){
        git credentialsId: 'github-credentials', url: 'https://github.com/thandava6303/maven-web-application-1.git'
    }
     stage ('creating the package'){
        sh '${maven}/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven/bin/mvn clean package'
        
    }
   
     stage('Upload Artifacts into Nexus'){
        sh '${maven}/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven/bin/mvn clean deploy'
        
    }
}
