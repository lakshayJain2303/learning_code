pipeline {
    agent { label 'slave-node-1' }

    stages {
        
        stage('Checkout') {
            steps {
           git branch: 'main', credentialsId: 'bf94e636-7b49-4879-8052-6c9a69d8f8b3', url: 'https://github.com/lakshayJain2303/learning_code.git' 
            }
        }
        
        stage('Build') {
            steps {
                sh "sudo sh /opt/jenkins_slave/workspace/Pipeline_Demo/scripts/Create_Image.sh ${params.image_tag}"
            }
           
    }
    stage('Push to Repo') {
        steps {
            sh "sudo sh /opt/jenkins_slave/workspace/Pipeline_Demo/scripts/Push_Image.sh ${params.image_tag}"
        }
    }
    
    stage('Deploy webapp') {
        steps {
            sh " sudo sh /opt/jenkins_slave/workspace/Pipeline_Demo/scripts/Run_Image.sh ${params.image_tag}"
        }
    }
}
}

