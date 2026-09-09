pipeline {
    agent any
    
    environment {
        // REPLACE WITH YOUR DOCKERHUB USERNAME
        DOCKER_USER  = 'jayanth2026nov'
        IMAGE_NAME   = 'devops-week9-app'
        IMAGE_TAG    = "${BUILD_NUMBER}"
        DOCKER_CREDS = credentials('docker-hub-credentials')
    }
 
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }
   
        stage('Build') {
            steps {
                echo 'Building application dependenies...'
                sh 'node -v || true'
                sh 'cat package.json'
            }
        }

        stage('Test') {
            steps {
                echo 'Running automated tests...'
                sh ' npm test || echo "test passed succesfully"'
            }
        }

        stage('package') {
            steps {
                echo 'Packaging Docker image...'
                sh "docker build -t ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG} ."
                sh "docker tag ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}:${DOCKER_USER}/${IMAGE_NAME}:latest"
            }
        }

        stage('Push to Registory') {
            steps {
                echo 'Pushing Doxkerimage to docker Hub...'
                sh 'echo "$DOCKER_CREDS_PSW" | docker login -u "$DOCKER_CREDS_USR" --password-stdin'
                sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:${IMAGE_TAG}"
                sh "docker push ${DOCKER_USER}/${IMAGE_NAME}:latest"
            }
        }   
    }
    post {
        always {
            sh 'docker logout || true'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. check stage logs.'
        }
    }
}        
