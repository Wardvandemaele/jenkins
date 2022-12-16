pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t api .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker tag api wardvandemaele/api:latest'
                sh 'docker push wardvandemaele/api:latest'
            }
        }
    }
}
