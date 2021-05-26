S3_Bucket_Name=$1
lambda=$2
GitBranch=$3
test=$4
echo $test
echo $GitBranch
#echo $3
#cd $workspace/lambda/target/
#cd /var/lib/jenkins/$GitBranch/target

echo $S3_Bucket_name
if [ $lambda = "UpdateCode" ]
then
    echo "/var/lib/jenkins/workspace/python-project-poc-aswin"
    cd /var/lib/jenkins/workspace/R1/lambda-deployment-new/
    for i in `ls *.zip`
    do
        echo $i
        echo $S3_Bucket_name
        aws s3 cp $i s3://$S3_Bucket_name
    done
fi

if [ $lambda = "Create" ]
then
    cd /var/lib/jenkins/workspace/R1/lambda-deployment-new/
    for i in `ls *.zip`
    do
        echo $i
        aws s3 cp $i s3://$S3_Bucket_name
    done
fi
