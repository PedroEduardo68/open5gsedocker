#/bin/bash
systemctl start open5gs-smfd
systemctl start open5gs-amfd
systemctl start open5gs-upfd
systemctl start open5gs-nrfd
systemctl start open5gs-scpd
systemctl start open5gs-ausfd
systemctl start open5gs-udmd
systemctl start open5gs-pcfd
systemctl start open5gs-nssfd
systemctl start open5gs-bsfd
systemctl start open5gs-udrd
systemctl start open5gs-webui

python3 -m http.server 80




