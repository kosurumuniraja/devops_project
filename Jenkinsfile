pipeline {
    agent any

    stages {
        
        stage("Using curl example") {
            steps {
                script {
                    
                    final String response = sh(script: """(curl -g -u admin:11a9310d90b6507ebfadf5e6cea76fae43 "http://13.232.41.183:8080/api/json?pretty=true&tree=jobs[name,color,url]")""")   
                   
                    
        
            }               
        }
        
       
    }

}
}
