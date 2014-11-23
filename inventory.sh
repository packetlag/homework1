#!/bin/bash

# Pulls OS type, version, and memory attributes from local host.
# Interview question included condition to execute against host list.
# Homework assigment does not include that criteria. Can be expanded.

# Identify user
USER=`id -u`

# Validate user condition and execute asset info gathering
if [ $USER = 0 ]; then
  echo "You are not allowed to run this as root.";
  exit
else

  OS=`uname -sr`

  if grep -q Darwin <<<$OS; then
     #echo "IT'S A MAC!"
     MEMORY=`hostinfo | grep memory | awk -F" " '{ print $2 ":  " $4 " " $5 }'`
  else
     PROTOMEM=`head -1 /proc/meminfo`
     MEMORY=`awk -F" " '{ print "memory:  " $1 " " $2 }' $PROTOMEM`
  fi

echo "host: " $HOSTNAME 
echo "os type & version: " $OS
echo $MEMORY
fi
