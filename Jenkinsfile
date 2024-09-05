pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository containing Terraform code
                checkout scm
            }
        }

        stage('Init') {
            steps {
                // Initialize Terraform
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Plan') {
            steps {
                // Generate a Terraform plan
                script {
                    sh 'terraform plan'
                }
            }
        }

        stage('Apply') {
            steps {
                // Apply the Terraform plan
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo 'Terraform applied successfully!'
        }
        failure {
            echo 'Terraform failed!'
        }
    }
}
