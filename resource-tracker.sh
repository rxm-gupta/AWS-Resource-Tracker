#!/bin/bash

##################

#Author: Ram
#Date: 00/00/2025
#This script provides the resources used by AWS

##################

set -x
set -e
set -o pipefail

echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print list of s3 buckets"
aws s3 ls

echo "Print list of lambda fuctions"
aws lambda list-functions

echo "Print list of IAM users"
aws iam list-users

:wq!
