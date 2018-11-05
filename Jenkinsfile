pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "make clean build"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}