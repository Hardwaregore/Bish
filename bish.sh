#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


require_root() {
  if [ "$(id -u)" != "0" ]; then
    printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n" 1>&2
    exit 1
  fi
}

require_root



command -v apache > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n"
command -v curl > /dev/null|| printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n"
command -v unzip > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n"
command -v wget > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n"
