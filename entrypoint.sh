#!/bin/sh

# Store stdout from the aws-cli call into a variable
RESULT=$(aws "$@")

# Export the variable as an output result named "result"
echo "::set-output name=result::$RESULT"
