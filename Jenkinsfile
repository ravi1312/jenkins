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
                git log --pretty=format: --abbrev-commit --merges --first-parent --name-only
                git log --pretty=format: --abbrev-commit --since=1.hour --name-only > output.txt
                cat output.txt
                mkdir sample
                cp -r output.txt sample
                cd sample
                git add output.txt
                git commit -m "test"
                git push https://ravi1312:ravi%40131231@Jenkins_shared_libraries.git HEAD:master
                """
             //   sh """
               // git log --pretty=format:'%h  -  %s  -  %cr  -  %an' --abbrev-commit --since=1.hour --name-only
                //"""
            }
        }
    }
}
