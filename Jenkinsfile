node {
    def mvnHome = tool 'Maven 3.8.5'
    stage('checkout')
    {
        git 'https://github.com/devendra0818/java-tomcat-maven-example.git'
    }
    stage('build')
    {
        sh "${mvnHome}/bin/mvn clean install -f /var/lib/jenkins/workspace/'Pipeline project'/pom.xml" 
    }
    stage('DevDeploy')
    {
        deploy adapters: [tomcat8(credentialsId: 'tomcat_deployer', path: '', url: 'http://13.235.103.200:8090/')], contextPath: '/opt/tomcat/webapps', war: '*.*war'
    }
}
