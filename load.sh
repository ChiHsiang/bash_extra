#!/bin/bash

cd ~/bash_extra

while read x;
do 
  if [[ $x == "load.sh" ]]
  then
    continue
  else
    source "$HOME/bash_extra/$x"
  fi
done << EOF
  $(ls)
EOF

