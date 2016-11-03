#!/usr/bin/env sh

cd /data/
./gradlew clean copyDownloadResources

# Copy downloads into 'plugins'
if [ -d "/data/build/downloads/plugins" ]; then
    cp /data/build/downloads/plugins/* /opt/xld/server/plugins
fi

# Compile plugin
cd /data/
./gradlew test assemble -PxlDeployHome=/opt/xld/server