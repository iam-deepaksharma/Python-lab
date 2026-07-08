pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                // ✅ Clone source code from GitHub
                git branch: 'main',
                    url: 'https://github.com/iam-deepaksharma/python-lab.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    // ✅ Build Docker image from Dockerfile
                    sh """
                    docker build -t localhost:5000/python-lab:v1 .
                    """
                }
            }
        }

        stage('Push') {
            steps {
                script {
                    // ✅ Push Docker image to local registry
                    sh """
                    docker push localhost:5000/python-lab:v1
                    """
                }
            }
        }
    }
}

