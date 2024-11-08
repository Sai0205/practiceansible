#!/bin/bash

INSTANCE_TYPE=t2.micro
INSTANCE_ID=ami-063d43db0594b521b
SECURITY_GROUP=sg-029d3df3dcb205cc1


aws ec2 run-instances --image-id $INSTANCE_ID --instance-type $INSTANCE_TYPE --security-group-ids $SECURITY_GROUP| jq -r  '.PrivateIpAddress'


