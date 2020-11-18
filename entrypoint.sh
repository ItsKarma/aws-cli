#!/bin/sh

# Store stdout from the aws-cli call into a variable
RESULT=$(aws "$@")

# Spit out the output for people reading logs
echo $RESULT

# Export the variable as an output result named "result"
echo "::set-output name=result::$RESULT"
