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
                bat 'docker run -i -t react-jenkins-break -d -p 5174:5174 --name react-jenkins-break-container'
            }
        }
    }
}
