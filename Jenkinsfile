pipeline {
    environment {
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build "wardvandemaele/api:latest"
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
