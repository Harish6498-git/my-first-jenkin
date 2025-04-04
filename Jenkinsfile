pipeline {
    agent any
    environment {
        DOCKER_HUB_USER = 'harish0604'  // Your DockerHub username
        DOCKER_IMAGE = 'my-first-docker-image'
        IMAGE_TAG = 'latest'
    }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_HUB_USER}/${DOCKER_IMAGE}:${IMAGE_TAG}", '.')
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        docker.image("${DOCKER_HUB_USER}/${DOCKER_IMAGE}:${IMAGE_TAG}").push()
                    }
                }
            }
        }
    }
}


