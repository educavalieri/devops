pipeline {
    agent any
    stages {
        stage('build da imagen docker'){
            steps{
                sh 'docker build -t application/application .'
            }
        }
        stage('subir docker compose app'){
            steps{
                sh 'docker-compose up -d'
            }
        }
        stage('sleep para subida de containers'){
            steps{
                sh 'sleep 10'
            }
        }
    }
}