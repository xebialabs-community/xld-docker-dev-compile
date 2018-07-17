#!/bin/bash

image_name="xebialabsunsupported/xld_dev_compile"
./dockertags xebialabs/xl-deploy > /tmp/xld
./dockertags $image_name > /tmp/xl
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
while read tag ; do
    docker build -t $image_name:$tag --build-arg xld_tag=$tag .
    docker push $image_name:$tag
done < <(comm -23 <(sort /tmp/xld) <(sort /tmp/xl))