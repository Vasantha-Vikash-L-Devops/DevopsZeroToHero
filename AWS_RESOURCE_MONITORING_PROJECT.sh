#!/bin/bash#

#######################################
#AWS PROJECT
# Author : Vasantha Vikash L
# Date : June 27 2024
# Version : v1
# This script will report the aws usage
#######################################


# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM

set -x

# LIST S3 BUCKETS:
echo "Print list of s3 buckets"
aws s3 ls

# LIST EC2 INSTANCES:
echo "Print list of ec2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# LIST AWS LAMBDA:
echo "Print list of lambda functions"
aws lambda list-functions > vjss

# LIST IAM USERS:
echo "Print list of IAM users"
aws iam list-users
