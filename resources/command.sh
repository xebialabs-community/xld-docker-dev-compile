#!/usr/bin/env sh
set -e
mkdir /build
cp -r /data/* /build

cd /build/
if ./gradlew tasks --all | grep 'copyDownloadResources'; then 
	./gradlew clean copyDownloadResources
fi

# Copy downloads into 'plugins'
if [ -d "/build/build/downloads/plugins" ]; then
    cp /build/build/downloads/plugins/* ${APP_HOME}plugins
fi

# Compile plugin
cd /build/
./gradlew test assemble -PxlDeployHome=${APP_HOME}
cp -rf /build/build/. /data/build