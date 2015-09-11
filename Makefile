DOCKER_NAMESPACE =	armbuild/
NAME =			scw-app-ubuntudesktop
VERSION =		latest
VERSION_ALIASES =	vivid 15.04
TITLE =			Ubuntu Desktop
DESCRIPTION =		Ubuntu Desktop
SOURCE_URL =		https://github.com/scaleway-community/scaleway-ubuntudesktop
VENDOR_URL =		http://www.ubuntu.com/download/desktop

IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Ubuntu Desktop


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
