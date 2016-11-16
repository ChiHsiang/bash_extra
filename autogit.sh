#!/bin/bash

update_br () {
  menu=$(git branch -a |  sed -e 's/*//' | tr -d ' ');

  echo "Select Branch:"
  select current_branch in $menu
  do
    echo $current_branch
    br=$current_branch
    break
  done

  echo "Select method:"
  select cmd in "push" "pull" "fetch"
  do
    echo $cmd
    cmd=$cmd
    break
  done


  update_br="git $cmd origin $br"
  eval $update_br
}
