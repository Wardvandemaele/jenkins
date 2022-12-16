pipeline {
    environment {
        registry = "wardvandemaele/api:latest"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'echo $dockerhub'
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
