#!/bin/bash

ctags_gen() {
  if ! type 'ctags' > /dev/null; then
    echo "Please brew install ctags"
  fi

  select language in `ctags --list-languages`
  do
    echo $language
    break
  done

}
