pipeline {

    agent any

    stages {
    	
    	caminho = '/home/robot/DesafioCompassoUOL'
    	
        stage('STAGE 00'){
            steps{
                sh 'cd ${caminho}'
                sh 'docker run --rm --name execucao_robot -v "/home/robot/DesafioCompassoUOL":/opt/robotframework/project -v "/home/robot/DesafioCompassoUOL/logs":/opt/robotframework/logs robot:latest pabot --processes 2 --outputdir /opt/robotframework/logs/ /opt/robotframework/project/tests/Suite*.robot'
            }
           stage('STAGE 01'){
            steps{
                $class : 'RobotPublisher',
		 outputPath : '${caminho}/logs',
		 outputFileName : "*.xml",
		 logFileName: "log.html",
		 disableArchiveOutput : false,
		 passThreshold : 100,
		 unstableThreshold: 95.0,
		 otherFiles : "*.png",
            }
        }
    }

}
