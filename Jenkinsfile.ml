pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                git url: 'https://github.com/prasadambasaveswar/cloudformation.git'
            }
        }
        stage('validate') {
                        steps {
                        load "parameters.groovy"
                        sh 'aws cloudformation validate-template --template-body file://instance1.json --region ${aws_default_region}'
                        }
        }
        stage('Build') {
            steps {
                sh '''
                sh awsclicft.sh
               '''
}
        }
         }
}
