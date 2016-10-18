#!/usr/bin/env sh

# Compile plugin
cd /data/
./gradlew clean test assemble -PxlDeployHome=/opt/xld/server