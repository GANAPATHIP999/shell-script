#!/bin/bash

COURSE="Devops from current Script"

 echo "Before calling other script, course: $COURSE"
 echo "Process ID of current shell script:$$"

 ./16-other-script.share

 echo "After calling other script, course: $COURSE"
 echo "Process ID of current shell script: $$"
