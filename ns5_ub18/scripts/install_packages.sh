#!/bin/bash
# Init
export DEBIAN_FRONTEND=noninteractive
apt-get update -yq
apt-get install -yq --no-install-recommends apt-utils
apt-get dist-upgrade -yq
useradd -ms /bin/bash nativescript

# Utilities
apt-get -yq install apt-transport-https unzip git curl usbutils gnupg --no-install-recommends

# JAVA
apt-get -yq install default-jdk --no-install-recommends

# Android build requirements
apt-get -y install lib32stdc++6 lib32z1 --no-install-recommends

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | bash - 
apt-get update -q
apt-get -yq install nodejs --no-install-recommends

# NativeScript
npm install -g nativescript --unsafe-perm
tns error-reporting disable



# Android SDK
$ANDROID_HOME/tools/bin/sdkmanager "tools" "platform-tools" "platforms;android-26" "build-tools;26.0.2" "extras;android;m2repository" "extras;google;m2repository" > /dev/null

apt-get clean
rm -rf /var/lib/apt/lists/*

tns usage-reporting disable && tns error-reporting disable
