#!/bin/bash

########################
# Author:
# Date:
#
# version:v1
#
# This script will report the aws reosurces usage
# #######################

# aws S3
# aws EC2
# aws Lambda
# aws iam Users

set -x
# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTracker

# list Ec2 instances
echo "print ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "print lambda functions"
aws lambda list-functions >> resourceTracker:q!

# list iam users
echo "print iam users"
aws iam list-users

