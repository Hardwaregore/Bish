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


disclaimer() {
printf "\n                ${red}DEVELOPERS HOLD NO LIABILLITY FOR MISUSE OF BISH${reset} \n \n"
}


options() {
clear
printf "\n \n      ${yellow}[§${green}GitHub${reset}${yellow}§]${reset}            ${yellow}[§${green}Google${reset}${yellow}§]${reset}          ${yellow}[§${green}GitLab${reset}${yellow}§]${reset} \n"
printf "      ${yellow}[§${green}Replit${reset}${yellow}§]${reset}            ${yellow}[§${green}Skyward${reset}${yellow}§]${reset}         ${yellow}[§${green}LightSpeedSystems${reset}${yellow}§]${reset} \n"
printf "      ${yellow}[§${green}PythonAnywhere${reset}§]${reset}    ${yellow}[§${green}Linode${reset}§]${reset}          ${yellow}[§${green}AWS${reset}§]${reset} \n"
printf "      ${yellow}[§${green}MicrosoftAzure${reset}${yellow}§]${reset}    ${yellow}[§${green}DigitalOcean${reset}${yellow}§]${reset}    ${yellow}[§${green}AppleID${reset}${yellow}§]${reset} \n"


}

input() {
read -p "Please choose an option $ " user_choice
echo "$user_choice"
}

input_processing() {

if [ user_choice = "GitHub\n" ]; then
site = GitHub
printf "$site \n"

elif [ user_choice = "Google\n" ]; then
site = Google
printf "$site \n"

fi
}


# require_root
# required_packages
options
input
input_processing







