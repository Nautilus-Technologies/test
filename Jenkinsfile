pipeline {  
    agent any

    environment {
    registry = "nautilustech/test"
    registryCredential = 'DockerhubCred'
    }  
  
    stages {
        stage('Cloning Git') {
          steps {
            git 'https://Oladotunn@github.com/Nautilus-Technologies/Test-Environment.git'
            credentialsId: 'GithubCred'
          }
        }

        // stage('Building image') {
            // when {expression { env.GIT_BRANCH == "origin/master" }}     
            // steps {
                // git branch: 'master',
                // credentialsId: 'GithubCred',
                // url: 'https://github.com/Nautilus-Technologies/Test-Environment.git'
                // script {
                    // docker.build registry + ":$BUILD_NUMBER"
                // }
            // }
        // }
// 
        // stage('Remove Unused docker image') {
            // steps{
            //   sh "docker rmi $registry:$BUILD_NUMBER"
            // }
        // }
    }
}