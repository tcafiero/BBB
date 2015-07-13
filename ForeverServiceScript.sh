#!/bin/bash

sudo npm install -g forever
sudo npm install -g forever-service

#per risoluzione del problema allo startup
sudo npm install grunt-bower-task -g

cd /usr/local/lib/node_modules/node-red
forever-service delete IoThingsWareManager
forever-service install -s red.js --start -o "  -u /usr/src/IoThingsWare/" -e "HOME=\"/usr/local/lib/node_modules/node-red/\"" -f "  -c node --sourceDir /usr/local/lib/node_modules/node-red/ --workingDir /usr/src/IoThingsWare/" IoThingsWareManager
netstat -tulpn

#Start   - "sudo service IoThingsWareManager start"
#Stop    - "sudo service IoThingsWareManager stop"
#Status  - "sudo service IoThingsWareManager status"
#Restart - "sudo service IoThingsWareManager restart"

