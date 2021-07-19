pipeline
{
agent any 
tools
{
// insatall the maven version configured as "m3" and add it to the path.
jdk 'java8'
maven "maven-3.5.3"
}

stages 
{
stage('checkout')
{
steps
{
// get some code from a github repository
git url: 'https://github.com/kosurumuniraja/devops_project.git'
}
}
}
}
