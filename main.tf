import boto3

ec2 = boto3.client('ec2')

def lambda_handler(event, context):
    response = ec2.run_instances(
        ImageId='ami-',  # replace with valid AMI
        InstanceType='t3.micro',
        MinCount=1,
        MaxCount=1,
        TagSpecifications=[
            {
                'ResourceType': '',
                'Tags': [
                    {'Key': 'rathod', 'Value': 'Lambda-EC2'}
                ]
            }
        ]
    )

