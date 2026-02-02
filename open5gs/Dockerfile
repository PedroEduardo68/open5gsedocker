FROM ubuntu:22.04
WORKDIR /app
##ENV container docker
COPY . .
RUN apt-get update && apt-get upgrade -y
RUN apt-get install vim nano htop sudo curl systemd systemd-sysv ca-certificates curl gnupg software-properties-common nodejs npm -y
RUN chmod +x open5gs.sh
#RUN ./open5gs.sh
ENTRYPOINT  ["/bin/bash"]
#ENTRYPOINT  ["npm", "start"]                
