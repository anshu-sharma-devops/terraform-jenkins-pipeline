pipeline {
    agent any

    stages {

        stage('Info') {
            steps {
                echo 'CI/CD pipeline running successfully'
            }
        }

        stage('List Workspace') {
            steps {
                sh 'ls -la'
            }
        }
    }
}