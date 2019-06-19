#!/bin/bash
aws cloudformation create-stack --stack-name myteststack --template-body file://mlcluster-none.template --parameters ParameterKey=KeyPairName,ParameterValue=${params.KeyName} ParameterKey=AZ,ParameterValue=us-east-1a\\,us-east-1b\\us-east-1c, ParameterKey=VPC ParameterValue=${params.vpc}, ParameterKey=PrivateSubnets, ParameterValue=${params.subnetid1}\\${params.subnetid2}
