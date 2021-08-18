#!/bin/bash

spin () {

local pid=$!
local delay=0.25
local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' '■■■■█' '■■■█■' '■■█■■' '■█■■■' '█■■■■' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
        tput civis
        echo -ne "\033[34m\r[*] Updateing... your system .........\e[33m[\033[32m$i\033[33m]\033[0m   ";
        sleep $delay
        printf "\b\b\b\b\b\b\b\b";
done
done
printf "   \b\b\b\b\b"
tput cnorm
printf "\e[1;33m [Done]\e[0m";
echo "";

}

sudo apt update && sudo apt upgrade -y

  sudo apt install gcc-8-base

  cat /etc/os-release

    echo "deb http://deb.debian.org/debian bullseye main contrib non-free" >> /etc/apt/sources.list
    echo "deb http://deb.debian.org/debian bullseye-updates main contrib non-free" >> /etc/apt/sources.list
    echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/sources.list
    echo "deb http://ftp.debian.org/debian bullseye-backports main contrib non-free" >>/etc/apt/sources.list

echo "updateing yous repos pls enter your pass"

sudo apt update
  sudo apt full-upgrade -y
sudo reboot
exit
