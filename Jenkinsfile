pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t react-jenkins-break .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -i -t react-jenkins-break -d -p 5174:5174 --name react-jenkins-break-container'
            }
        }
    }
}
