FROM qoherent/open5gs:latest
WORKDIR /etc/open5gs
RUN apt-get update | apt-get install htop iputils-ping iproute2  -y 
COPY /openconfig /config5gs
RUN cp /config5gs/* /etc/open5gs/
RUN chmod 777 /etc/open5gs/*
CMD  ["/bin/bash","./go.sh"]
#ENTRYPOINT  ["npm", "start"]                
