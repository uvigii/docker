#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
git submodule update --init --recursive
wget -q http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz
tar -xzf node-v${NODE_VERSION}-linux-x64.tar.gz
mv node-v${NODE_VERSION}-linux-x64 /opt/node
rm node-v${NODE_VERSION}-linux-x64.tar.gz
PATH=${PATH}:/opt/node/bin
npm install -g nativescript --unsafe-perm
npm install nativescript --unsafe-perm
$ANDROID_HOME/tools/bin/sdkmanager "tools" "platform-tools" "platforms;android-26" "build-tools;26.0.2" "extras;android;m2repository" "extras;google;m2repository" > /dev/null
npm i

apt-get clean
rm -rf /var/lib/apt/lists/*