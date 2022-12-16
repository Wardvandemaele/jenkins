pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker -t api .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker login -u wardvandemaele -p $$xFM2XeaCk3wgWHYLz9'
                sh 'docker tag api wardvandemaele/api:latest'
                sh 'docker push wardvandemaele/api:latest'
            }
        }
    }
}
