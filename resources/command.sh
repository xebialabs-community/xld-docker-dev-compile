#!/usr/bin/env sh
set -e
mkdir /build
cp -r /data/* /build

cd /build/
./gradlew clean copyDownloadResources

# Copy downloads into 'plugins'
if [ -d "/build/build/downloads/plugins" ]; then
    cp /build/build/downloads/plugins/* /opt/xld/server/plugins
fi

# Compile plugin
cd /build/
./gradlew test assemble -PxlDeployHome=/opt/xld/server
cp -rf /build/build/. /data/build