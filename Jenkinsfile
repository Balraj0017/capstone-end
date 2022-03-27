pipeline{
    agent any
    environment {
      dockerhub_repo = "balraj0017/springbootapp"  
      dockerhub=credentials('dockerhub_id')
      dockerImage = ''
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
            stage('build image')
            {
         
                steps{
                   dockerImage = docker.build dockerhub_repo + ":$GIT_COMMIT-build-$BUILD_NUMBER"
                }
            } 

       }

}
