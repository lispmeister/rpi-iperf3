# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Markus Fix <lispmeister@gmail.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    iperf3\
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]

