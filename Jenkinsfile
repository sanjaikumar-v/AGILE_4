pipeline {
    agent any
    stages {
        stage('Build & Test') { steps { sh 'mvn clean test' } }
        stage('Package') { steps { sh 'mvn package -DskipTests' } }
        stage('Containerize') { steps { sh 'docker build -t agile-app:latest .' } }
    }
}
