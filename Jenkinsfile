pipeline {

    agent any
    
    environment {
    	caminho = '/home/robot/DesafioCompassoUOL'
    }
  
    stages {
	
	    stage('Testes com Robot Framework') {
	        steps {
                    sh 'cd ${caminho}'
                    sh 'docker run --rm --name execucao_robot -v "/home/robot/DesafioCompassoUOL":/opt/robotframework/project -v "/home/robot/DesafioCompassoUOL/logs":/opt/robotframework/logs robot:latest pabot --processes 2 --outputdir /opt/robotframework/logs/ /opt/robotframework/project/tests/Suite*.robot'
	        }
	    
	    post {
	        always {
                    script {
		          step(
			            [
			              	$class : 'RobotPublisher',
		 			outputPath : '${caminho}/logs',
		 			passThreshold : 100,
		 			unstableThreshold: 100,
		 			otherFiles : "*.png"
			            ]
		          	)
		           }
	  		}		
	         }
	   }    
     }
  
}
