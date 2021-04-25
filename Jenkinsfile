pipeline {

    agent any

    stages {
        stage('STAGE 00'){
            steps{
                sh 'cd /home/robot/DesafioCompassoUOL'
                sh 'docker run --rm --name execucao_robot -v "/home/robot/DesafioCompassoUOL":/opt/robotframework/project -v "/home/robot/DesafioCompassoUOL/logs":/opt/robotframework/logs robot:latest pabot --processes 2 --outputdir /opt/robotframework/logs/ /opt/robotframework/project/tests/Suite*.robot'
                sh 'robot'
            }
        }
    }

}
