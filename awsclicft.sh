#!/bin/bash
aws cloudformation create-stack --stack-name ${StackName} --region ${aws_default_region} --template-body file://instance1.json --parameters ParameterKey=SSHKeyName,ParameterValue=${KeyName} ParameterKey=InstanceType,ParameterValue=${InstanceType} ParameterKey=IAMRole,ParameterValue=${IAMRole} ParameterKey=VPC,ParameterValue=${VPC} ParameterKey=VolumeSizeA,ParameterValue=${VolumeSizeA} ParameterKey=VolumeSizeB,ParameterValue=${VolumeSizeB} ParameterKey=VolumeType,ParameterValue=${VolumeType} ParameterKey=SubnetIdxyz,ParameterValue=${PrivateSubnets} ParameterKey=SecurityGroupId,ParameterValue=${SecurityGroupId} ParameterKey=availabilityZone,ParameterValue=${availabilityZone}
