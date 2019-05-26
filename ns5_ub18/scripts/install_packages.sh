#!/bin/bash
# Init
export DEBIAN_FRONTEND=noninteractive
export ANDROID_HOME="/opt/android-sdk"
export SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip"
export GRADLE_URL="https://services.gradle.org/distributions/gradle-5.4.1-bin.zip"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

apt-get update -yq
apt-get install -yq --no-install-recommends apt-utils
apt-get dist-upgrade -yq
useradd -ms /bin/bash nativescript

# Utilities
apt-get -yq install apt-transport-https unzip git curl usbutils gnupg wget --no-install-recommends

# JAVA
apt-get -yq install default-jdk --no-install-recommends

# Android build requirements
apt-get -y install lib32stdc++6 lib32ncurses5 lib32z1 --no-install-recommends

# Android SDK
mkdir -p "$ANDROID_HOME" .android
cd "$ANDROID_HOME" 
curl -o sdk.zip $SDK_URL \
 && unzip sdk.zip \
 && rm sdk.zip \
 && yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses

wget $GRADLE_URL -O gradle.zip \
 && unzip gradle.zip \
 && mv gradle-4.5.1 gradle \
 && rm gradle.zip \
 && mkdir .gradle

$ANDROID_HOME/tools/bin/sdkmanager "tools" "emulator" "platform-tools" "platforms;android-28" "build-tools;28.0.3" "extras;android;m2repository" "extras;google;m2repository"

# NodeJS
curl -sL https://deb.nodesource.com/setup_10.x | bash - 
apt-get update -q
apt-get -yq install nodejs --no-install-recommends

# NativeScript
npm install -g nativescript --unsafe-perm
tns error-reporting disable

apt-get clean
rm -rf /var/lib/apt/lists/*

tns usage-reporting disable && tns error-reporting disable
