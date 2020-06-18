pipeline{
    agent any
    stages{
        stage('build master'){
            when{
                branch master
            }
            steps{
                echo "building master"
            }
        }
        stage('building dev'){
            when{
                branch dev
            }
            steps{
                echo "building dev"
            }
        }
    }
}
