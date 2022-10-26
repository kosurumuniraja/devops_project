pipeline {
    agent any

    stages {
        
        stage("Using curl example") {
            steps {
                script {
                    
                   def jobNamePattern ='.*'   // adjust to folder/job regex as needed
                   def daysBack = 60   // adjust to how many days back to report on
                   def timeToDays = 24*60*60*1000  // converts msec to days

                   println "Job Name: ( # builds: last ${daysBack} days / overall )  Last Status\n   Number | Trigger | Status | Date | Duration\n"

                   Jenkins.instance.allItems.findAll() {
                   it instanceof Job && it.fullName.matches(jobNamePattern)
                   }.each { job ->
                   builds = job.getBuilds().byTimestamp(System.currentTimeMillis() - daysBack*timeToDays, System.currentTimeMillis())
                   println job.fullName + ' ( ' + builds.size() + ' / ' + job.builds.size() + ' ) '  + job.getLastBuild()?.result 
                   println '  ' + job.getLastBuild().getCauses()[0].getShortDescription()
                   println '  ' + job.getLastBuild().getTimestampString2() 
                   println '  ' + job.getLastBuild().getDurationString()
}
return
                   
                    
        
            }               
        }
        
       
    }

}
}
