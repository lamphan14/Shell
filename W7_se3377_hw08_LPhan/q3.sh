#!/bin/bash
# validating if atleast 1 argument is given in command line
if [ $# -lt 1 ]
then
echo "Invalid input. Atleast one argument must be passed"
echo "Usage: $0 <filename>"
exit 1
fi
# storing filename which is $1 into fname variable
fname=$1
# verifying if given file is ordinary file
if [ -f $fname ]
then
echo "Given file $fname is an ordinary file"
# verifying if given file is directory
elif [ -d $fname ]
then
echo "Given file $fname is a directory"
# verifying if given file is some other type of file and exists
elif [ -e $fname ]
then
echo "Given file $fname is not a regular or directory but some other type of file"
# if file does not exists
else
echo "Given file $fname does not exist in current working directory"
fi