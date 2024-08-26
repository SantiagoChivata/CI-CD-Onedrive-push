pipeline {
    agent any
    
    stages {
        stage('Instalar Maven') {
            steps {
                sh 'wget https://downloads.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz'
                sh 'tar -xvf apache-maven-3.8.6-bin.tar.gz'
                sh 'mv apache-maven-3.8.6 /opt/maven'
                sh 'mvn clean package'
            }
        }

        stage('Construir Proyecto') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}