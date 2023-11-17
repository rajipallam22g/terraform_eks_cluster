pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_key')
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Shaiknayeem753/terraform_eks_cluster.git'
            }
        }
        
        stage('creating s3_dynamodb') {
            steps {
                dir("s3_bucket") {
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform plan'
                sh 'terraform apply --auto-approve'
                }
            }
        }
       
        
        
        
        stage('init Terraform') {
            steps {
                
                sh 'terraform init'
            }
        }
        stage('validate Terraform') {
            steps {
                
                sh 'terraform validate'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Apply Terraform') {
            steps{
                
                sh 'terraform apply --auto-approve'
            }
        }
       
        stage('Install kubectl') {
            steps {
                script {
                    // Download and install kubectl
                    sh '''
                        curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
                        chmod +x kubectl
                        sudo mv kubectl /usr/local/bin/
                    '''
                }
            }
        }

        stage('Verify kubectl installation') {
            steps {
                script {
                    // Verify kubectl installation
                    sh 'kubectl version --client'
                    sh 'aws eks --region ap-south-1 update-kubeconfig --name my_eks_cluster'
                }
            }
        }
    

 

    

        
        
    }

}
