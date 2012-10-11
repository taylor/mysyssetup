#!/bin/bash

# Google Calendar Indicator -- http://www.makeuseof.com/tag/calendar-indicator-google-calendar-ubuntus-tray-linux/
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get install -y calendar-indicator

# ubuntu-tweak
#sudo add-apt-repository ppa:tualatrix/ppa  
#sudo apt-get install ubuntu-tweak

# ubuntu audio stuff
sudo add-apt-repository ppa:ubuntu-audio-dev/ppa


# geron
sudo add-apt-repository ppa:v-geronimos/ppa

#ubuntu x stuff
sudo add-apt-repository ppa:ubuntu-x-swat/x-updates

# mactel ubuntu
sudo add-apt-repository ppa:mactel-support


# NETWORKING

## replace network-manager with wicd
sudo aptitude install wicd wicd-curses wicd-cli wicd-gtk wpasupplicant
#sudo apt-get remove --purge network-manager-gnome network-manager
# or disable both... they both suck in different ways
sudo update-rc.d -f wicd remove
echo "manual" | sudo tee /etc/init/network-manager.override

## remove apport or disable it
sudo aptitude remove apport
# sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport


## charles proxy
##
wget -q -O - http://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -
echo 'deb http://www.charlesproxy.com/packages/apt/ charles-proxy main' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install charles-proxy


## power
sudo aptitude install uswusp
# copy lid script
sudo mkdir -p /etc/acpi/local
sudo cp ../power/etc/acpi/local/lid.sh.pre /etc/acpi/local

## Agenda script
sudo apt-get install ccal googlecl


## auto-mount
## aptitude install halevt
## create policykit -- http://superuser.com/questions/53978/ubuntu-automatically-mount-external-drives-to-media-label-on-boot-without-a-u
##                     https://awesome.naquadah.org/wiki/Automounting


