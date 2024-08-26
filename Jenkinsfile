pipeline {
    agent any
    
    stages {
        stage('Instalar Maven') {
            steps {
                sh 'export MAVEN=/usr/share/maven'
                sh 'mvn --version'
                sh 'mvn clean package'
            }
        }
    }
}