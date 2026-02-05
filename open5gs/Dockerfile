FROM qoherent/open5gs:latest
WORKDIR /etc/open5gs
RUN apt-get update | apt-get install htop python3  -y
COPY /openconfig /config5gs


RUN sed -i '1i\db_uri: mongodb://admin:admin@mongo:27017/open5gs' hss.yaml
RUN sed -i '2d' hss.yaml
RUN sed -i '1i\db_uri: mongodb://admin:admin@mongo:27017/open5gs' pcf.yaml
RUN sed -i '2d' pcf.yaml
RUN sed -i '1i\db_uri: mongodb://admin:admin@mongo:27017/open5gs' pcrf.yaml
RUN sed -i '2d' pcrf.yaml
RUN sed -i '1i\db_uri: mongodb://admin:admin@mongo:27017/open5gs' udr.yaml
RUN sed -i '2d' udr.yaml

#mongosh mongodb://admin:admin@mongo:27017/admin
#mongosh mongodb://admin:admin@mongo:27017/open5gs

RUN sed -i '13i\while true; do\n    echo "Status UP"\n    sleep 1\ndone' go.sh
CMD ["sh", "-c", "./go.sh"]
