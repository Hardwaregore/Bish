#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`


require_root() {
  if [ "$(id -u)" != "0" ]; then
    printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: NOT root)${reset} \n \n" 1>&2
    exit 1
  fi
}


required_packages() {
command -v php > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: php NOT INSTALLED)${reset} \n \n"
command -v curl > /dev/null|| printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: curl NOT INSTALLED)${reset} \n \n"
command -v unzip > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: unzip NOT INSTALLED)${reset} \n \n"
command -v wget > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: wget NOT INSTALLED)${reset} \n \n"
}


options() {
clear
printf "\n \n ${yellow}[§GitHub§]${reset}    ${yellow}[§Google§]${reset}    ${yellow}[§GitLab]${reset} \n"
printf "this is a test"


}


# require_root
# required_packages
options





