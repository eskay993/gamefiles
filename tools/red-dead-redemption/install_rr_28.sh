#############################################################################
# Installs RDR 'Reality Redemption Overhaul Project' on Linux.
# https://www.nexusmods.com/reddeadredemption/mods/219
#
# Modified the script to add an auto-yes option env var to 
# install all mods. Only does this for the individual mod prompts. 
# The initials prompt and the backup prompt stil need user input.
#
# Usage:
# AUTOYES=1 ./intall_rr.28.sh
#
# Credits:
# BadassBaboon for the overhall project.
# FlaffWaffle for the original bash script.
#
#############################################################################


#!/bin/bash

# Ensure we’re running in the script’s directory
cd "$(dirname "$0")"

# Welcome message
clear
echo "Welcome to the Reality Redemption BETA 2.8 automatic installation for PC!"
echo "Read the ReadMe file to avoid any errors while installing the mod!"
echo
echo
echo
echo "Press Enter to continue..."
read

# Main menu
clear
echo "[1] Install Reality Redemption"
echo "[2] Uninstall and restore backups"
echo "[3] Cancel and Exit"
echo
echo "It's time to choose:"
read -p "Select an option (1-3): " choice

case $choice in
  1) option="install" ;;
  2) option="uninstall" ;;
  3) exit 0 ;;
  *) echo "Invalid option. Exiting..." && exit 1 ;;
esac

# Function for backup restoration prompt
restore_backup() {
  read -p "Restore $1? [Y/N]: " choice
  if [[ $choice =~ ^[Yy]$ ]]; then
    cp -f ../game/backups/$1 ../game/$1
  else
    echo "Skipping $1..."
  fi
}

# Uninstall and restore backups
if [ "$option" == "uninstall" ]; then
  echo "Preparing the uninstallation and checking for backups..."
  sleep 2

  required_files=("camera.rpf" "content.rpf" "fragments.rpf" "grassres.rpf" "mapres.rpf" "naturalmotion.rpf" "navres.rpf" "tune_d11generic.rpf")

  echo "${required_files[@]}"

  for file in "${required_files[@]}"; do
    if [ ! -f "../game/backups/$file" ]; then
      echo "Required backup file $file cannot be found. Exiting..."
      exit 1
    fi
  done

  echo "Found all necessary backup files! Proceeding with the uninstallation..."
  sleep 2

  for file in "${required_files[@]}"; do
    restore_backup "$file"
  done

  echo "Uninstallation complete."
  exit 0
fi

# Install Reality Redemption
if [ "$option" == "install" ]; then
  echo "Preparing the installation and checking for game files..."
  sleep 2

  required_files=("camera.rpf" "content.rpf" "fragments.rpf" "grassres.rpf" "mapres.rpf" "naturalmotion.rpf" "navres.rpf" "tune_d11generic.rpf")

  for file in "${required_files[@]}"; do
    if [ ! -f "../game/$file" ]; then
      echo "Required game file $file cannot be found. Exiting..."
      exit 1
    fi
  done

  echo "Found all necessary files! Proceeding with the installation..."
  sleep 2

  read -p "Would you like to take backups of your game's files? [Y/N]: " backup_choice
  if [[ $backup_choice =~ ^[Yy]$ ]]; then
    mkdir -p ../game/backups
    for file in "${required_files[@]}"; do
      echo "Backing up $(realpath ../game/$file) to $(realpath ../game/backups/$file)"
      cp -f ../game/$file ../game/backups/$file
    done
    echo "Backup successful!"
  else
    echo "No backups will be taken."
  fi

  # Function for feature installation prompt
  install_feature() {
    if [[ $AUTOYES == "1" ]]; then
      $choice="y"
    else
      read -p "Install $1? [Y/N]: " choice
    fi
    if [[ $choice =~ ^[Yy]$ ]]; then
      WINEDEBUG=-all,-unk_res wine MagicRDR.exe -replace ..\\game\\$2 $3 RR-Files\\$4 -current
    else
      echo "Skipping $1..."
    fi
  }



  install_feature "HD loading screens" "mapres.rpf" "root\\mapres" "mapres_loadingscreens"
  install_feature "HD lore-accurate minimap" "mapres.rpf" "root\\mapres" "mapres_minimap"
  install_feature "HD game world textures" "mapres.rpf" "root\\mapres" "mapres_terrain"
  install_feature "HD game world textures (vegetation)" "fragments.rpf" "root\\fragments" "fragments_vegetation"
  install_feature "HD John Marston textures" "mapres.rpf" "root\\mapres" "mapres_player"
  install_feature "HD secondary characters textures" "fragments.rpf" "root\\fragments" "fragments"
  install_feature "HD grass textures" "grassres.rpf" "root\\grassres" "grassres"
  install_feature "enhanced ragdoll behaviors" "naturalmotion.rpf" "root\\naturalmotion" "naturalmotion"
  install_feature "RDR2-styled Camera" "camera.rpf" "root\\camera" "camera"
  install_feature "RDR2-styled timecycle, color scheme, and weather" "tune_d11generic.rpf" "root\\tune\\skyhat" "tune_skycycle\\skyhat"
  install_feature "Reality Redemption fixes and improvements" "content.rpf" "root\\content\\ambient" "content\\ambient"

  echo "Installation complete. Enjoy the mangos at Tahiti!"
  exit 0
fi
