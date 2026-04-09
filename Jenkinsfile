pipeline {
    agent any
    stages {
        stage('Build & Test') { steps { bat 'mvn clean test' } }
        stage('Package') { steps { bat 'mvn package -DskipTests' } }
        stage('Containerize') { steps { bat 'docker build -t sanjaikumar1one/agile-app:latest .' } }
        stage('Push & Deploy') { 
            steps { 
                // We removed the raw token to pass GitHub's security check
                bat 'docker push sanjaikumar1one/agile-app:latest'
                bat 'docker rm -f agile-running-app || ver > nul'
                bat 'docker run -d -p 8080:8080 --name agile-running-app sanjaikumar1one/agile-app:latest'
            } 
        }
    }
}