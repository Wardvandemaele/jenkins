pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker -v -t wardvandemaele/api:latest .'
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