pipeline {
    agent any
    stages {
        stage('parar aplicacação java'){
            steps{
                sh 'docker stop java-app_application'
            }
        stage('deletar imagem'){
            steps{
                sh 'docker rmi java-app_application'
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