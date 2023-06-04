pipeline {
    agent any

    stages {
     stage('Build MY APP') {
        steps {
            lock(extra:[[label: 'label-test',quantity: 2] {
            // Build your application here
                script {
                sh '/bin/bash test.sh'
            }
            }
    
        }
    }
        stage('Build') {
            steps {
                lock('test') {
                // Build your application here
                    script {
                    sh 'pip install -r requirements.txt'
                }
            }
            }
        }
        
        stage('Test') {
            steps {
                // Run tests here
                echo 'Running tests...'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy your application here
                echo 'Deploying...'
            }
        }
    }

    post {
        always {
            // This block will always run, regardless of the stage result
            echo 'Always executing...'
        }
        
        success {
            // This block will only run if all stages are successful
            echo 'All stages successful!'
        }
        
        failure {
            // This block will only run if any stage fails
            echo 'At least one stage failed!'
        }
        
        unstable {
            // This block will only run if any stage is unstable
            echo 'At least one stage is unstable!'
        }
        
        aborted {
            // This block will only run if the pipeline is aborted
            echo 'Pipeline aborted!'
        }
    }
}
