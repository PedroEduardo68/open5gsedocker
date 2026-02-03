FROM qoherent/open5gs:latest
WORKDIR /etc/open5gs
RUN apt-get update | apt-get install htop python3  -y
COPY /openconfig /config5gs
RUN sed -i '13i\while true; do\n    echo "Status UP"\n    sleep 1\ndone' go.sh
CMD ["sh", "-c", "./go.sh"]
