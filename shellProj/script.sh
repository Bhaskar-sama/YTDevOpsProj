#!/bin/bash
#################
#Author: Bhaskar S.
#Date: 01/01/25
#Version: v1
#Script: To get the AWS resource details
################

#List of ec2 instances
echo "EC2 instances" > ResourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> ResourceTracker
#List of s3
echo "S3 buckets">> ResourceTracker
aws s3 ls>> ResourceTracker
#List of lambda functions
echo "Lambda functions">> ResourceTracker
aws lambda list-functions>> ResourceTracker
#List of iam users
echo "Iam users">> ResourceTracker
aws iam list-users>> ResourceTracker
