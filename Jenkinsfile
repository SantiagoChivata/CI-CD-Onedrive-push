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
        stage('Cargar a OneDrive') {
            steps {
                script {
                    def jarFile = "target/mi-aplicacion-1.0-SNAPSHOT.jar"
                    def remotePath = "onedrive:/CI-CD-Onedrive-Automatization/"
                    
                    sh "rclone --config /var/jenkins_home/.config/rclone/rclone.conf copy ${jarFile} ${remotePath}"
                }
            }
        }
    }
}