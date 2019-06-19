pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git url: 'https://github.com/prasadambasaveswar/cloudformation.git'
            }
        }
        stage('build') {
        steps {
        sh './awsclicft.sh'
        }
        }
        stage('deploy') {
            steps {
                sh 'echo cloudformation stack completed'
	}
        }
    }
}
