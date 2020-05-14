node{
    
    stage('git checkout'){
        git credentialsId: 'github', url: 'https://github.com/Shruti-Arasagond/Case-study.git'
        print "stage 1 completed"
        
    }
    
    stage('Maven Clean'){
        sh 'mvn clean'
    }
    
    stage('build, test and package'){
        def mavenHome = tool name: 'maven3', type:'maven'
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} compile"
        print "stage 3 completed"
    }
    
    stage('build docker image'){
        sh 'docker build -t 15041995/cicd:1.0 .'
        print "stage 4 completed"
    }
    
    stage('push docker image'){
    withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhub')]) {
    sh "docker login -u 15041995 -p ${dockerhub}"
    } 
    sh 'docker push 15041995/cicd:1.0'
    print "stage 5 completed"
    }
    
    stage('Deploy container'){
        sh 'docker pull 15041995/cicd:1.0'
        print "stage 6 completed"
    }
    
    stage('Run containers'){
        sh 'docker run -p 8888:8887 15041995/cicd:1.0'
        print "stage 7 completed"
    }
}