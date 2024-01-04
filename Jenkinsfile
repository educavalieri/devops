pipeline {
    agent any
    stages {
        stage('subir docker compose app'){
            steps{
                sh 'sudo docker-compose up -d'
            }
        }
        stage('sleep para subida de containers'){
            steps{
                sh 'sleep 10'
            }
        }
    }
}