#!/bin/sh

# Store stdout from the aws-cli call into a variable
RESULT=$(awsv2 "$@")

# Capture the exit code and we'll use the same code at the end of this script
# That means failures will be visible in the console
EXITCODE=$?

# Spit out the output for people reading logs
echo $RESULT

# Export the variable as an output result named "result"
echo "::set-output name=result::$RESULT"

echo "Exiting with code $EXITCODE"

exit $EXITCODE
