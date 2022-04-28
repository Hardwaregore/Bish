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
printf "      ${yellow}[§${green}PythonAnywhere${reset}${yellow}§]${reset}    ${yellow}[§${green}Linode${reset}${yellow}§]${reset}          ${yellow}[§${green}AWS${reset}${yellow}§]${reset} \n"
printf "      ${yellow}[§${green}MicrosoftAzure${reset}${yellow}§]${reset}    ${yellow}[§${green}DigitalOcean${reset}${yellow}§]${reset}    ${yellow}[§${green}Canvas${reset}${yellow}§]${reset} \n"


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

elif [ user_choice = "GitLab\n" ]; then
site = Google
printf "$site \n"

elif [ user_choice = "Replit\n" ]; then
site = Replit
printf "$site \n"

elif [ user_choice = "Skyward\n" ]; then
site = Skyward
printf "$site \n"

elif [ user_choice = "LightSpeedSystems\n" ]; then
site = LightSpeedSystems
printf "$site \n"

elif [ user_choice = "PythonAnywhere\n" ]; then
site = PythonAnywhere
printf "$site \n"

elif [ user_choice = "Linode\n" ]; then
site = Linode
printf "$site \n"

elif [ user_choice = "AWS\n" ]; then
site = AWS
printf "$site \n"

elif [ user_choice = "MicrosoftAzure\n" ]; then
site = MicrosoftAzure
printf "$site \n"

elif [ user_choice = "DigitalOcean\n" ]; then
site = DigitalOcean
printf "$site \n"

elif [ user_choice = "Canvas\n" ]; then
site = Canvas
printf "$site \n"

fi
}


# require_root
# required_packages
disclaimer
options
input
input_processing







