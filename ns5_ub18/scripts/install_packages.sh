#!/bin/bash
# Init
export DEBIAN_FRONTEND=noninteractive
apt-get update -yq
apt-get install -yq --no-install-recommends apt-utils
apt-get dist-upgrade -yq
useradd -ms /bin/bash nativescript

# Utilities
apt-get update
apt-get -y install apt-transport-https unzip git curl usbutils --no-install-recommends

# JAVA
apt-get update
apt-get -y install default-jdk --no-install-recommends

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | bash - 
apt-get update
apt-get -y install nodejs --no-install-recommends

# NativeScript
npm install -g nativescript
tns error-reporting disable

# Android build requirements
apt-get -y install lib32stdc++6 lib32z1 --no-install-recommends

# Android SDK
$ANDROID_HOME/tools/bin/sdkmanager "tools" "platform-tools" "platforms;android-26" "build-tools;26.0.2" "extras;android;m2repository" "extras;google;m2repository" > /dev/null

apt-get clean
rm -rf /var/lib/apt/lists/*

tns usage-reporting disable && tns error-reporting disable
