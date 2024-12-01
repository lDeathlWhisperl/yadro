FROM ubuntu:20.04

RUN apt-get update && apt-get install -y
RUN ln -snf /usr/share/zoneinfo/UTC /etc/localtime && echo UTC > /etc/timezone
RUN apt-get install -y locales && \
	locale-gen en_US.UTF-8 && \
	update-locale LANG=en_US.UTF-8

RUN apt-get install build-essential -y
RUN	apt-get install qemu qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils -y
RUN apt-get install git -y

WORKDIR /data
RUN git clone git://git.yoctoproject.org/poky
WORKDIR /data/poky

ENTRYPOINT ["/data/init.sh"]
