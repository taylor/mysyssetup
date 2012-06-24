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
sudo apt-get remove --purge network-manager-gnome network-manager

## remove apport or disable it
sudo aptitude remove apport
# sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport
