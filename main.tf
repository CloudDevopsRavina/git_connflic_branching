import boto3

ec2 = boto3.client('ec2')

def lambda_handler(event, context):
    response = ec2.run_instances(
        ImageId='ami-0ff5003538b60d5ec',  # replace with valid AMI
        InstanceType='t3.micro',
        MinCount=1,
        MaxCount=1,
        TagSpecifications=[
            {
                'ResourceType': 'instance',
                'Tags': [
                    {'Key': 'Name', 'Value': 'Lambda-EC2'}
                ]
            }
        ]
    )

