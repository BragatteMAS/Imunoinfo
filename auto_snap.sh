#!/usr/bin/env bash

echo ' \n Auto install programs with SNAP \n '

# ---------------------------------------------------------------------- #
#Programs select from SNAP store <https://snapcraft.io/store>
# -----------------------------VARIABLES-------------------------------- #
SNAP_INSTALL=(
bitwarden		  	  #System|password manager
code		 		      #Terminal|best IDE
audacity 			    #Sound|audio editor and recording app
spotify			      #Sound|digital music service
photogimp	 		    #Image|patch 'Adobe' for GIMP
inkscape 			    #Image|vector graphics software
blender	 		      #Image|3D pipeline—model,animation,simulation,rendering
gifcurry 			    #Image|gif creator
obs-studio		    #Video|Edition
kdenlive			    #Video|Edition
vlc				        #Video|Viewer
arandr            #Video|monitor settings
discord 			    #Comunication|interaction/gamer chat
telegram-desktop  #Comunication|alternative for whatsapp
rambox 			      #Comunication|join different systems of comunication
chromium          #Productivity|browser
opera             #Productivity|browser
todoist			      #Productivity|Task manager
foliate			      #Productivity|ebook viewer
feedreader			  #Productivity|RSS
zotero-snap			  #Productivity|References
homeserver		    #Productivity|Share folders in urls
docker  			    #Productivity|container environmental 'sudo groupadd docker' && 'sudo usermod -aG docker $USER'
nextcloud-desktop #Productivity|file synced
pymol-oss         #Research

)
# ---------------------------------------------------------------------- #
##Install Snap repository of apps for Linux
sudo apt install snapd -y

# ---------------------------------------------------------------------- #
## Install programs SNAP
for snap_program in ${SNAP_INSTALL[@]}; do
  if ! dpkg -l | grep -q $snap_program; then # Just install if not exist
    snap install "$snap_program" 
  fi
done

# ---------------------------------------------------------------------- #
## Updating the repository ##
sudo snap refresh

echo ' \n Done! Select packages install with Snapstore packs. \n '
