pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo ' pulled code from github'
                sh 'ls'
            }
            stage('Test') {
                steps {
                    echo "Running test cases"
                    sh ' sh test.sh'
                  
                }
            }
            stage('Build') {
                steps {
                    echo "Building the code"
                }
            }
            stage('Deploy') {
                steps {
                    echo "Deploying the code"
                }
            }
            post {
                always {
                    echo "This will always run"
                }
                success {
                    echo "This will run only if successful"
                }
                failure {
                    echo "This will run only if failed"
                }
            }
        }
    }
}