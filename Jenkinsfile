pipeline{
    agent any
    stages{
        stage('build master'){
            when{
                branch 'master'
            }
            steps{
                echo "building master"
                echo "example"
            }
        }
        stage('building dev'){
            when{
                branch 'dev'
            }
            steps{
                echo "building dev"
            }
        }
        stage('test'){
            steps{
                echo 'hello'
                sh 'git ls-files . -d -m -o --exclude-standard --full-name -v'
            }
        }
    }
}
