pipeline {
    agent any
    stages {
        stage('apagando instancia rodando Docker - java_application'){
            steps{
                sh 'docker stop java_application'
            }
        }
        stage('apagando imagens Docker'){
            steps{
                sh 'docker container prune'
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