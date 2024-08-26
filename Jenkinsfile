pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
			steps {
				checkout([$class: 'GitSCM', branches: [[name: "origin/${params.BRANCH}"]],
				doGenerateSubmoduleConfigurations: false,
				extensions: [[$class: 'CloneOption', depth: 0, noTags: true, shallow: true, timeout: 30]], submoduleCfg: [],
				userRemoteConfigs: [[credentialsId: "github", url: "https://github.com/SantiagoChivata/CI-CD-Onedrive-push.git"]]])
			}
		}
        stage('Instalar Maven') {
            steps {
                sh 'export MAVEN=/usr/share/maven'
                sh 'mvn --version'
                sh 'mvn clean package'
            }
        }
    }
}