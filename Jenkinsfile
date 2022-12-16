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
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push wardvandemaele/api:latest'
            }
        }
    }
}
