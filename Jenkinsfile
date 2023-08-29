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
        stage('Registry Login') {
            steps {
                sh '''#!/bin/bash
                    doctl registry login'
            '''
            }
        }
        stage('Tagging image') {
            steps {
                sh '''#!/bin/bash
                    docker tag machine-book:latest registry.digitalocean.com/sandboxcsp/machine-book:latest'
                '''
            }
        }
        stage('Pushing image') {
            steps {
                sh 'docker push registry.digitalocean.com/sandboxcsp/machine-book:latest'
            }
        }
    }
}