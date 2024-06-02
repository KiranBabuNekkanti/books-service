pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS_ID = 'docker_creds_id'
        KUBECONFIG = '/path/to/your/kubeconfig'
        IMAGE_NAME = 'books-service'
        REGISTRY_URL = 'https://hub.docker.com/repository/docker/kiranbabun'
        DEPLOYMENT_FILES = 'manifests/*.yaml'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                git 'https://github.com/KiranBabuNekkanti/books-service.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build("${REGISTRY_URL}/${IMAGE_NAME}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                // Push Docker image to registry
                script {
                    docker.withRegistry(REGISTRY_URL, DOCKER_CREDENTIALS_ID) {
                        docker.image("${REGISTRY_URL}/${IMAGE_NAME}:latest").push()
                    }
                }
            }
        }

        //stage('Deploy to Kubernetes') {
      //      steps {
                // Apply deployment files in Kubernetes
         //       sh "kubectl apply -f ${DEPLOYMENT_FILES}"
         //   }
      //  }
    }
}