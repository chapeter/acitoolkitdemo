#!/bin/bash

service mysql start
mysqladmin -u root password cisco
python /opt/acitoolkit/applications/endpointtracker/aci-endpoint-tracker.py -u http://10.94.238.68 -l admin -p cisco123 -i 127.0.0.1 -a root -s cisco &
python /opt/acitoolkit/applications/endpointtracker/aci-endpoint-tracker-gui.py -i 127.0.0.1 -a root -s cisco123 &
python /opt/acitoolkit/applications/snapback/snapback.py --port 5001 &
/bin/bash
