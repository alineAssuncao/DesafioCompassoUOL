pipeline {

    agent any
    
    environment {
    	caminho = '/home/robot/DesafioCompassoUOL'
    }
  
    stages {
	
	    stage('Testes com Robot Framework') {
	        steps {
                    sh 'cd ${caminho}'
                    sh 'docker run --rm --name execucao_robot -v "${caminho}":/opt/robotframework/project -v "${caminho}/logs":/opt/robotframework/logs robot:latest pabot --processes 2 --outputdir /opt/robotframework/logs/ /opt/robotframework/project/tests/Suite*.robot'
	        }
	    
	    post {
	        always {
                    script {
		          step(
			            [
			              	$class : 'RobotPublisher',
		 			outputPath : '/home/robot/DesafioCompassoUOL/logs',
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
