#!/bin/bash

DIR="$HOME/bash_extra"

while read x;
do 
  if [[ $x == "load.sh" ]]
  then
    continue
  else
    source "$DIR/$x"
  fi
done << EOF
  $(ls $DIR)
EOF

