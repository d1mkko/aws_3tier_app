TEMP_FILE=$1
STACK_NAME=aws-3tier-app-template-vpc-stack

aws cloudformation deploy \
--template-file $1 \
--stack-name $STACK_NAME 