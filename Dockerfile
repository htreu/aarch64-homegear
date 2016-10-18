FROM aarch64/ubuntu
RUN apt-get update && apt-get -y install ca-certificates
#RUN apt-get update && apt-get -y install wget apt-transport-https ca-certificates \
#    && wget https://homegear.eu/packages/Release.key \
#    && apt-key add Release.key \
#    && rm Release.key
COPY *.deb /
RUN dpkg -i *.deb; exit 0
RUN apt-get update && apt-get --fix-missing -f install -y
CMD ["/usr/bin/homegear"]
#, "-p /var/run/homegear/homegear.pid", "-d"]

