#!/bin/bash

scp_file () {

  echo "Up or Download: "
  select action_do in "up" "download"
  do
    action=$action_do
    break
  done

  echo "Select Server:"
  select server in "ubuntu" "arch_linux"
  do
    case $server in
      ubuntu)
        server="auli@10.0.1.103"
        ;;
      arch_linux)
        server="auli@10.0.1.101"
        ;;
    esac
    break
  done

  echo -n "Target Path: "
  read file_path

  download="scp $server:$file_path ./"
  up="scp $file_path $server:~/"
  cmd="${!action}"

  eval $cmd
}
