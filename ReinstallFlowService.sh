forever-service delete IoThingsWareManager
forever-service install -s red.js --start -o "  -u /usr/src/IoThingsWare/" -e "HOME=\"/usr/local/lib/node_modules/node-red/\"" -f "  -c node --sourceDir /usr/local/lib/node_modules/node-red/ --workingDir /usr/src/IoThingsWare/" IoThingsWareManager
