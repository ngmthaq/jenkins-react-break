pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'docker build -t react-jenkins-break .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -dp 4173:4173 --name react-jenkins-break-container -t react-jenkins-break'
            }
        }
    }
}
