pipeline {
    agent any

    environment {
        APP_NAME = 'my-app'
        VERSION = '1.0'
    }
    stages {
        stage('checkout') {
            steps {
                echo "Building ${APP_NAME} version ${VERSION}"
                sh 'ls'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'sh test.sh'
            }
        }
        stage('Deploy') {
            steps {
               echo "Deploying ${APP_NAME} "
            }
        }
        stage('Info') {
            steps {
                echo "Build number: ${env.BUILD_NUMBER}"
                echo "Job name: ${env.JOB_NAME}"
                echo "workspace: ${env.WORKSPACE}"
            }

        }
    }
}