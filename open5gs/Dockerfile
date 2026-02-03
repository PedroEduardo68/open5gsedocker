FROM qoherent/open5gs:latest
WORKDIR /etc/open5gs
RUN apt-get update | apt-get install htop python3  -y
COPY /openconfig /config5gs
RUN cp /config5gs/go.sh /etc/open5gs/go.sh
RUN chmod 777 /etc/open5gs/go.sh
CMD  ["/bin/bash","./go.sh"]
