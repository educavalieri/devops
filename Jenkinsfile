pipeline {
    agent any
    stages {
        stage('parar aplicacação java'){
            steps{
                sh 'docker stop java_application'
            }
        }
        stage('deletar container'){
            steps{
                sh 'docker rm java_application'
            }
        }
        stage('deletar imagem'){
            steps{
                sh 'docker rmi java_image -f'
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