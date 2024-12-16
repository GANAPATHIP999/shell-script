#!/bin/bash

USERID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log 

VALIDATE(){
    if [ $1 -ne 0 ]
     then 
       echo "$2...FAILURE"
       exit 1
    else 
      echo "$2...SUCCESS"
    fi
     
}


if [ $USERID -ne 0 ]
  then 
    echo "please run this script with root access."
    exit 1
else 

    echo "you are super user."
fi

 echo "all packages: $@"

for i in $@
do 
  echo "package to install: $i"
  dnf list installed $i &>>$LOGFILE
  if [ $? -ne 0 ]
  then 
       echo " $i alredy installed...SKIPPING"
   else 
      echo " $i not installed...Need to install"
      
  fi



done