pipeline{
    agent any

    environment {
    }
    stages{
        stage('SCM Checkout'){
            steps{
                git 'https://github.com/ashiq-ali/myapp-ansible.git'
            }
        }
        stage('Execute Ansible Playbook'){
            steps{
                  sh "echo Hello 1" 
        }
        stage('Check Curl version'){
            steps{
                  sh "echo Hello"
            }
        } 
    }
}