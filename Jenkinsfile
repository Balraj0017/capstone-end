pipeline{
    agent any
    environment {
      dockerhub=credentials('dockerhub_id')
   }
    tools { 
        maven 'maven3'
    }
    stages
       {
            stage("clean")
            {
                steps{
                    sh "mvn clean"
                }
            }
            stage("Build")
            {
                steps{
                    sh "mvn compile"
                }
                
            }
            stage("TEST")
            {
                steps{
                    sh "mvn test"
                }
            }
            stage("package")
            {
                steps{
                    sh "mvn package"
                }
            }
            stage('Building our image')
            {
                 steps{
                     script {
                               dockerImage = docker.build registry + ":$BUILD_NUMBER"
                            }
                      }
            }




       }

}
