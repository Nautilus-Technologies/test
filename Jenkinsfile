pipeline {  
    agent any

    environment {
    registry = "nautilustech/test"
    registryCredential = 'DockerhubCred' 
    }  
  
     
   
    stages {
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}