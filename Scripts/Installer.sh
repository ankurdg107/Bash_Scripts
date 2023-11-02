#!/bin/bash

echo "Welcome to The_Installer"
sleep 1
echo "You can download any application on your linux distro"
sleep 1

echo -n "Select an option which u want to install"
sleep 2

echo ""
echo " 1)Visual Studio Code
      2)Brave Browser
      3)Chrome 
      4)zsh
      5)Build-Essential
      6)VLC media Player
      7)WhatsApp
      8)Telegram Desktop
      9)Discord
      10)LibreOffice
      11)NodeJs and npm
      12)Openssh
      13)Sublime Text
      14)Spotify
      15)Blender
      16)Audacity"
read OPTION

# echo -n "The official language of $COUNTRY is "


case $OPTION in

  1)
   echo -n "Installing Visual Studio Code"
   sudo snap install --classic code 2> file.txt
   echo ""
   echo "Version:" 
   code --version
   echo " Vs Code Installed successfully"
   
    ;;

  2)
    echo -n "Installing Brave-Browser"
    sudo apt install apt-transport-https curl > file.txt 2>&1
    curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --      keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - > file.txt 2>&1
   echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update > file.txt 2>&1
    sudo apt install brave-browser 2> file.txt 
    sleep 1
    rm file.txt
    echo -n "Brave Installed  successfully"
    ;;

  3)
    echo -n "Installing Chrome"
    echo ""
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > file.txt 2>&1
    sudo dpkg -i google-chrome-stable_current_amd64.deb > file.txt 2>&1
    echo -n "Chrome Installed  successfully"
    sleep 1
    clear
    ;;
  4)
  echo -n "Installing Zsh Shell"
   sudo apt-get update > file.txt 2>&1
   sudo apt-get install zsh > file.txt 2>&1
   echo -n "zsh Shell Installed successfully"
   sleep 1
   clear
  ;;

  5)
  echo -n "Installing Build-Essential"
   sudo apt update && sudo apt install build-essential > file.txt 2>&1
   echo -n "Build-Essential Installed successfully"
   sleep 1
   clear
  ;;
  6)
  echo -n "Installing VLC"
   sudo apt install snapd -y > file.txt 2>&1
   sudo snap install vlc > file.txt 2>&1
   echo -n "VLC installed successfully"
   sleep 1
   clear
  ;;
  7)
  echo -n "Installing WhatsApp for Linux"
   sudo apt install snapd -y > file.txt 2>&1
   sudo snap install whatsapp-for-linux > file.txt 2>&1
   echo -n "WhatsApp installed successfully"
   sleep 1
   clear
  ;;
  8)
  echo -n "Installing Telegram Desktop"
   sudo apt install snapd -y > file.txt 2>&1
   sudo snap install telegram-desktop > file.txt 2>&1
   echo -n "Telegram installed successfully"
   sleep 1
   clear
  ;;
  9)
  echo -n "Installing Discord"
   sudo apt install snapd -y > file.txt 2>&1
   sudo snap install discord > file.txt 2>&1
   echo -n "Discord installed successfully"
   sleep 1
   clear
  ;;
  10)
  echo -n "Installing LibreOffice"
   sudo apt update > file.txt 2>&1
   sudo apt install libreoffice -y > file.txt 2>&1
   sudo apt-get update --fix-missing > file.txt 2>&1
   echo -n "LibreOffice installed successfully"
   sleep 1
   clear
  ;;
  11)
  echo -n "Installing NodeJs and npm"
   sudo apt update > file.txt 2>&1
   sudo apt install npm -y > file.txt 2>&1
   sudo apt install nodejs -y > file.txt 2>&1
   echo -n "NodeJs and npm installed successfully"
   sleep 1
   clear
  ;;
  12)
  echo -n "Installing Openssh"
   sudo apt update > file.txt 2>&1
   sudo apt install openssh-client openssh-server -y > file.txt 2>&1
   echo -n "Openssh installed successfully"
   sleep 1
   clear
  ;;
  13)
  echo -n "Installing Sublime Text"
   sudo apt install snapd > file.txt 2>&1
   sudo snap install --classic sublime-text > file.txt 2>&1
   echo -n "Subline Text installed successfully"
   sleep 1
   clear
  ;;
  14)
  echo -n "Installing Spotify"
   sudo apt install snapd > file.txt 2>&1
   sudo snap install spotify > file.txt 2>&1
   echo -n "Spotify installed successfully"
   sleep 1
   clear
  ;;
  15)
  echo -n "Installing Blender"
   sudo apt install snapd > file.txt 2>&1
   sudo snap install --classic blender > file.txt 2>&1
   echo -n "Blender installed successfully"
   sleep 1
   clear
  ;;
  16)
  echo -n "Installing Audacity"
   sudo apt install snapd > file.txt 2>&1
   sudo snap install audacity > file.txt 2>&1
   sudo snap connect audacity:alsa > file.txt 2>&1
   echo -n "Audacity installed successfully"
   sleep 1
   clear
  ;;
  
    

  *)
    echo -n "Exiting"
    ;;
esac
