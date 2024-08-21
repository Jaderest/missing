#!/bin/bash

export MACRO_PATH="$HOME/missing/hw2/"

macro() {
  # check if the directory exists
  mkdir -p "$MACRO_PATH"

  # current directory
  current_dir=$(pwd)

  # copy the file to the directory
  echo "$current_dir" >> "${MACRO_PATH}"/macro.txt
}

polo() {
  cd "$MACRO_PATH"
  dir_path=$(tail -n 1 macro.txt) 2> /dev/null
  # check if the macro has been used
  if [ -z "$dir_path" ]; then
    echo "You haven't used macro yet."
    $(exit 1)
  else
    echo cd" $dir_path"
    cd "$dir_path"
  fi
}

macro_history() {
  if [ -f "${MACRO_PATH}"/macro.txt ]; then
    cat "${MACRO_PATH}"/macro.txt
  else
    echo "You haven't used macro yet."
  fi
}

macro_clear() {
  if [ -f "${MACRO_PATH}"/macro.txt ]; then
    rm "${MACRO_PATH}"/macro.txt
  fi
}