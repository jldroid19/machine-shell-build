#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build Book') {
            steps {
                echo 'Building book..'
                sh './build_tag_push.sh'
            }
            
        }
        stage('Docker images') {
            steps {
                echo 'Printing Docker Images'
                sh 'docker images'
            }
        }
    }
}