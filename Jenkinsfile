pipeline {
    agent any
    stages {
        stage('Checkout code') {
            steps {
                git url: 'https://github.com/ashwinade2306-lgtm/jenkinsdemo7.git', branch:'main'

            }
        }
        stage('Build image') {
            steps {
                bat 'docker build -t myimage .'

            }
        }
        stage('Create Container') {
            steps {
                bat 'docker run -d -p 8502:8501 myimage'

            }
        }
    }
}