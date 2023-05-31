pipeline {
    agent any

    stages {
        stage('Build') {
            lock('test') {
            steps {
                // Build your application here
                echo 'Building...'
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
