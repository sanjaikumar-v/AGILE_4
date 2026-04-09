pipeline {
    agent any
    stages {
        stage('Build & Test') { steps { bat 'mvn clean test' } }
        stage('Package') { steps { bat 'mvn package -DskipTests' } }
        stage('Containerize') { steps { bat 'docker build -t agile-app:latest .' } }
    }
}
