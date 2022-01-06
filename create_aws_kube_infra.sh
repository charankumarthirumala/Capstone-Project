count=$(grep -i eksctl-capstone-charan-cluster output.txt | wc -l)
if [[ $count -gt 0 ]]
    then 
    echo "Skipping Cluster creation .. Infrastructure Exists"
    else
    echo "Creatiing AWS Kubernetes cluster"
    eksctl create cluster --name capstone-charan --version 1.19 --region $AWS_DEFAULT_REGION --nodegroup-name capstone-charan --node-type t3.large --nodes-min 2 --nodes-max 4 --managed
fi