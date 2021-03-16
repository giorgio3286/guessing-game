#!/bin/sh

checkValue(){
if ! [[ $1 =~ $re ]] ; then
  echo "You must insert a positive number. Retry..." 
elif [ $1 -eq $files_number ] ; then
  echo "Congratulation, you guessed!"
  exit 0
elif [ $1 -lt $files_number ] ; then
  echo "You entered a smaller number. Retry..."
else 
  echo "You entered a bigger number. Retry..."
fi
}

re='^[0-9]+$'
files_number=$(ls | wc -l)
echo "Hi, guess how many files are in current directory! Insert a positive number..."
while [ true ]; do
  read response
  checkValue $response
done
