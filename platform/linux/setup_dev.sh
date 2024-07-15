#!/bin/bash 


if [ -x "$(command -v apk)" ]; then
#  sudo apk add --no-cache $packagesNeeded
  echo "You must manually install dependencies"
elif [ -x "$(command -v apt-get)" ]; then

  apt-get update
  apt-get install -y cmake build-essential
  apt-get install -y libcurl4-openssl-dev libssl-dev zlib1g-dev
  apt-get install -y libfreetype6-dev libpng-dev libjpeg-dev libvorbis-dev libogg-dev 
  apt-get install -y libgles2-mesa-dev  libsdl2-dev libopenal-dev

elif [ -x "$(command -v dnf)" ]; then
#  sudo dnf install $packagesNeeded
  echo "You must manually install dependencies"
elif [ -x "$(command -v zypper)" ]; then 
#  sudo zypper install $packagesNeeded
  echo "You must manually install dependencies"
else
  echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually install: $packagesNeeded">&2; 
fi


echo "In order to build for Android, you need to install Android Studio, install Android Api level 28 via the SDK manager and accept the license agreements."
echo "Then you can build via Solar2D for Android."
