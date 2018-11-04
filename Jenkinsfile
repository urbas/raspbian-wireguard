pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Hello world!"
                sh "wget https://git.zx2c4.com/WireGuard/snapshot/WireGuard-0.0.20181018.tar.xz"
                sh "ls -la"
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