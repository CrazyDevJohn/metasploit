#!bin/bash
clear

# Add some colours
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
light_cyan='\033[1;96m'
reset='\033[0m'


function banner(){

printf "   ${red}###########################################################   \n"
printf "          ##   ${green}                                       ##   \n"
printf "          ##   ${green}######  ####### #     # ### #          ##   \n"
printf "          ##   ${green}#     # #       #     #  #  #          ##   \n"
printf "          ##   ${green}#     # #       #     #  #  #          ##   \n"
printf "          ##   ${red}#     # #####   #     #  #  #          ##     \n"
printf "          ##   ${green}#     # #        #   #   #  #          ##   \n"
printf "          ##   ${green}#     # #         # #    #  #          ##   \n"
printf "          ##   ${green}######  #######    #    ### #######    ##   \n"
printf "          ##   ${green}                                       ##   \n"
printf "    ${red}########  ######## DJshalani 1.1v ########################   \n"
printf "${red} \n"
printf "${red} \n"
printf "${red} \n"

printf "    ${blue}[+] YouTube : White Devil     \n"
printf "\n"
printf "    ${blue}[+] GitHub  : Devilshalani \n"
printf "\n"
printf "    ${blue}[+] Email   : Devilshalani@gmail.com \n"
printf "\n"
printf "\n"
printf "    ${green}[=] Devil Exploiting Using Webhosting\n"
printf "\n"
printf "    ${green}[+] Type msfconsole To Tun This Tool\n"




printf "\n"
printf "\n"
printf "\n"
printf "\n"






}
banner

apt-get update -y
apt-get upgrade -y

function shalaniMain() {
  
  if [[ -e /data/data/com.termux/files/usr/bin/msfconsole ]]; then
    printf "${green}you have allredy ${blue}msfconsole"
  else
    printf "Installing startad"
    apt-get install unstable-repo -y
    apt-get install metasploit -y
    
    echo "/data/data/com.termux/files/usr/var/postgresql -l logfile start " > bin/postgresql-start
    echo "/data/data/com.termux/files/usr/var/postgresql -l logfile stop" > bin/postgresql-stop
    
    if [[ -e bin/postqresql-start ]]; then
      if [[ -e bin/postqresql-stop ]]; then
        cp -r bin/* /data/data/com.termux/files/usr/bin/
      else
        cd bin/
        echo "/data/data/com.termux/files/usr/var/postgresql -l logfile start " > bin/postgresql-start
        echo "/data/data/com.termux/files/usr/var/postgresql -l logfile stop" > bin/postgresql-stop
        cp -r bin/* /data/data/com.termux/files/usr/bin/
      fi
    else
      cd bin/
      echo "/data/data/com.termux/files/usr/var/postgresql -l logfile start " > bin/postgresql-start
      echo "/data/data/com.termux/files/usr/var/postgresql -l logfile stop" > bin/postgresql-stop
      cp -r bin/* /data/data/com.termux/files/usr/bin/
    fi
    
  fi
  
}

shalaniMain

clear

banner

function checking() {
  if [[ -e /data/data/com.termux/files/usr/bin/msfconsole ]]; then
    printf "${green}[${reset}+${green}] Installing Successful.\n\n"
    
  else
    printf "${green}[${reset}+${green}] Installing Faild.\n Try Again \n\n "
    
  fi
}
checking