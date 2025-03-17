### Create change set for new stack:
aws cloudformation create-change-set \
  --stack-name aws-3tier-app-template-ec2-stack \
  --change-set-name aws3tierAppEC2ChangeSet \
  --template-body file://EC2_creation_template.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --change-set-type CREATE


### Create change set for existing stack:
aws cloudformation create-change-set \
  --stack-name aws-3tier-app-template-ec2-stack \
  --change-set-name aws3tierAppEC2ChangeSet \
  --template-body file://EC2_creation_template.yml \
  --capabilities CAPABILITY_NAMED_IAM

### Describe change set executed
aws cloudformation describe-change-set \
  --stack-name aws-3tier-app-template-ec2-stack \
  --change-set-name aws3tierAppEC2ChangeSet > change_set_describe.json

### Execute change set
aws cloudformation execute-change-set \
  --stack-name aws-3tier-app-template-ec2-stack \
  --change-set-name aws3tierAppEC2ChangeSet

### Describe stack events
aws cloudformation describe-stack-events --stack-name aws-3tier-app-template-ec2-stack

### Validate template
aws cloudformation validate-template --template-body file://EC2_creation_template.yml

### Deploy stack 
aws cloudformation deploy \
 --template-file $1 \
 --stack-name $STACK_NAME

aws cloudformation deploy \
 --template-file EC2_creation_template.yml \
 --stack-name aws-3tier-app-template-ec2-stack