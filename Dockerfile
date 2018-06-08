## -*- docker-image-name: "scaleway/ubuntudesktop:vivid" -*-
#FROM scaleway/ubuntu:amd64-trusty
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
FROM scaleway/ubuntu:armhf-trusty 
#FROM scaleway/ubuntu:arm64-trusty       # arch=arm64
#FROM scaleway/ubuntu:i386-trusty        # arch=i386
#FROM scaleway/ubuntu:mips-trusty        # arch=mips


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Install packages
RUN apt-get -q update \
 && apt-get -y -qq upgrade \
 && apt-get install -y -q \
        fluxbox \
        gtk2-engines-murrine \
        lxde-core \
        lxterminal \
        novnc \
        pwgen \
        tightvncserver \
        ttf-ubuntu-font-family \
        x11-apps \
        x11vnc \
        xvfb \
 && apt-get clean


# Patch rootfs
COPY ./overlay/ /


# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
