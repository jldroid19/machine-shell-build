#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build Book') {
            echo 'Building book..'
            sh '/build_tag_push.sh'
        }
        stage('Docker images') {
            echo 'Printing Docker Images'
            sh 'docker images'
        }
    }
}