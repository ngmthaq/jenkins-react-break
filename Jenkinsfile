pipeline {
    agent any
    stages {
        stage('Install') {
            steps {
                bat 'yarn install'
            }
        }
        stage('Lint') {
            steps {
                bat 'yarn lint'
            }
        }
        stage('Build') {
            steps {
                bat 'docker build -t react-jenkins-break .'
            }
        }
        stage('Remove Old Container') {
            steps {
                bat 'docker container rm -f react-jenkins-break-container'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -dp 4173:4173 --name react-jenkins-break-container -t react-jenkins-break'
            }
        }
    }
}
