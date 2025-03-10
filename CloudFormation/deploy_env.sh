VPC_TEMP_FILE=$1
EC2_TEMP_FILE=$2

echo "Creating VPC Stack"
./VPC/deploy_vpc_template.sh $1

echo""

echo "Creating EC2 stack"
./EC2/deploy_ec2_template.sh $2