pipeline {  
    agent any

    environment {
    registry = "nautilustech/test"
    registryCredential = 'DockerhubCred' 
    }  
  
    stages {
        stage('Cloning Git') {
          steps {
            git 'https://github.com/Nautilus-Technologies/Test-Environment.git'
          }
        }

        stage('Building image') {
            when {expression { env.GIT_BRANCH == "origin/master" }}     
            steps {
                git branch: 'master',
                credentialsId: 'githubtoken',
                url: 'https://github.com/Nautilus-Technologies/Test-Environment.git'
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Remove Unused docker image') {
            steps{
              sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}