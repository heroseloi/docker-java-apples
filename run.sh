#!/bin/bash

docker stop java-applet-container && docker rm java-applet-container

	if [ $? == 0 ]
	then
	image=$(docker image ls | grep java-applet-vnc | awk '{print $3}')
	docker rmi $image
	fi

	if [ ! -f jdk-8u202-linux-x64.tar.gz ]
	then
	curl -s -O https://mirrors.huaweicloud.com/java/jdk/8u202-b08/jdk-8u202-linux-x64.tar.gz

		if [$? != 0 ]
		then
		echo "Download error. Make sure you download jdk-8u202-linux-x64.tar.gz"
		exit 1	
		fi 
	fi

	if [ -f jdk-8u202-linux-x64.tar.gz ]
	then
	md5=$(md5sum jdk-8u202-linux-x64.tar.gz | awk {'print $1'})
	
		if [ $md5 != "0029351f7a946f6c05b582100c7d45b7" ]
		then
		echo "File error. Make sure you download jdk-8u202-linux-x64.tar.gz"
		exit 1
		fi
	fi

docker build --platform linux/amd64 -t java-applet-vnc . && docker run --platform linux/amd64 -p 5901:5901 --name java-applet-container java-applet-vnc
