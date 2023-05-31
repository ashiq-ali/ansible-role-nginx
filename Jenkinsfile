pipeline{
    agent any

    environment {
        OUTPUT='ansible-role.tar.gz'
    }
    stages{
        stage('SCM Checkout'){
            steps{
                git 'https://github.com/ashiq-ali/myapp-ansible.git'
            }
        }
        stage('Execute Ansible Playbook'){
            steps{
                ansiblePlaybook disableHostKeyChecking: true, installation: 'Ansible2', inventory: 'hosts', playbook: 'test-playbook.yml'
            }
        }
        stage('Check Curl version'){
            steps{
                  sh "curl --version "
            }
        } 
        stage('Download Ansible Role'){
            steps{ 
               script{ 
                  sh '''
                  set +x
                  curl -OL --silent --insecure 'https://ashiqartifactory.jfrog.io/artifactory/example-repo-local/ansible-nginx.tar.gz' -o ${OUTPUT}
                  echo "[INFO] - Ansible Role"
                  tar -xzf ${OUTPUT}
                  '''
                }
            }
        } 
    }
}