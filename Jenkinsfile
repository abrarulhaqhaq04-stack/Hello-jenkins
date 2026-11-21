pipeline {
    agent any

    parameters {
        string(name: 'USER_NAME', defaultValue: 'student', description: 'who is running the build')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'staging', 'prod'], description: 'where to deploy')
        booleanParam(name: 'RUN_TESTS', defaultValue: true, description: 'Run tests before deployment?')
    }

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
            when {
                expression {  params.RUN_TESTS == true}
            }
            steps {
                echo " Test started by ${params.USER_NAME} "
                sh 'sh test.sh'
            }
        }
        stage('Deploy') {
            steps {
               echo "Deploying to ${params.ENVIRONMENT} "
            }
        }
        stage('Info') {
            steps {
                echo "Build number: ${env.BUILD_NUMBER}"
                echo "Job name: ${env.JOB_NAME}"
                echo "workspace: ${env.WORKSPACE}"
            }

        }
        stage('use secret') {
            steps {
                withCredentials([string(credentialsId: 'demo-secret', variable: 'MY_SECRET')]) {
                    sh 'echo "secret length: ${#MY_SECRET}"'
                    sh 'echo "secret value: $MY_SECRET"'
            }
        }
    }
}