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
                echo "testing smee"
              //  sh 'git ls-files . -d -m -o --exclude-standard --full-name -v'
              //  sh 'git ls-files -z | xargs -0 -n1 -I{} -- git log -1 --format="%ai {}" {} | sort'
                sh """
                git log --merges --name-only --first-parent
                git log --merges --name-only --first-parent --pretty=format:
                git log --pretty=format: --abbrev-commit -10 --name-only --first-parent

                """
             //   sh """
               // git log --pretty=format:'%h  -  %s  -  %cr  -  %an' --abbrev-commit --since=1.hour --name-only
                //"""
            }
        }
    }
}
