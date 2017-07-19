#!/usr/bin/env bash

voice="Princess"
hour=`date +"%r"`
message="I AM DONE RUNNING!"
failure_msg="TASK FAILED?!?!?!?!"



yell(){

  $ok 

  if [[ $? -eq 0 ]];
  then
    $(say -v $voice --progress "$message $ok")
  else
    $(say -v $voice "$failure_msg")
  fi
}

ok="${@}" 
yell $ok
