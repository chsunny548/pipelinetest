pipeline {
  agent any
  
  stages {

       stage('Build'){
           steps {
           sh '''
                ./jenkins/pipeline/mvn.sh mvn -B -DskipTests clean package
                ./jenkins/pipeline/build.sh  
            '''
            }
         }
}}
