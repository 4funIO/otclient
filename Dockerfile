FROM ubuntu:trusty

RUN apt-get update -y \
	&& apt-get install -y --no-install-recommends \
		build-essential cmake make \
		libboost-all-dev libphysfs-dev libssl-dev liblua5.1-dev libglew-dev \
		libvorbis-dev libopenal-dev libz-dev \
	&& apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

VOLUME "/otclient"
WORKDIR "/otclient"