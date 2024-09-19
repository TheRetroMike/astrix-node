FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install wget unzip -y
WORKDIR /opt/
RUN wget https://github.com/astrix-network/astrix-node/releases/download/v0.14.1/astrix-node-v0.14.1-linux.zip
RUN unzip astrix-node-v0.14.1-linux.zip
RUN mv astrix-node/* /usr/bin/
CMD /usr/bin/astrixd
