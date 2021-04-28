#!/bin/bash

http --follow https://gist.githubusercontent.com/jdewinne/3f13494858fad8b6b2b88ebd3439f1ea/raw/dce2f06fea89a6038acd6944c516c8be9347c48d/dockertags > ./dockertags
chmod +x dockertags

image_name="xebialabsunsupported/xld_dev_compile"
./dockertags -i xebialabs/xl-deploy -e "centos$" > /tmp/xld
./dockertags -i $image_name > /tmp/xl
while read tag ; do
    echo "####################################################################"
    docker rmi $image_name:$tag
    echo "####        $image_name:$tag removed"
    docker rmi xebialabs/xl-deploy:$tag
    echo "####        $image_name:$tag removed"
    echo "####################################################################"
done < <(sort /tmp/xld)
