pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Print Info') {
            steps {
                sh 'echo "Jenkins Pipeline Working Successfully"'
                sh 'uname -a'
                sh 'terraform version || true'
            }
        }
    }
}