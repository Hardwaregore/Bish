#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


require_root() {
  if [ "$(id -u)" != "0" ]; then
    printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n" 1>&2
    exit 1
  fi
}

require_root



command -v php > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: php NOT INSTALLED)"
command -v curl > /dev/null|| echo "CRITICAL ERROR! ABORTING! (Err: curl NOT INSTALLED)"
command -v unzip > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: unzip NOT INSTALLED)"
command -v wget > /dev/null || echo "CRITICAL ERROR! ABORTING! (Err: wget NOT INSTALLED)"
