sudo apt-get purge xrdp

sudo apt-get purge apache2 apache2-mpm-worker apache2-utils apache2.2-bin apache2.2-common
sudo apt-get autoremove #get rid of no-longer needed dependencies

sudo systemctl stop cloud9.service            #stop working copy
sudo systemctl stop cloud9.socket             #stop working copy
sudo systemctl disable cloud9.service         #disable autorun
sudo systemctl disable cloud9.socket          #disable autorun
sudo rm -rf /var/lib/cloud9                   #installed binaries and such
sudo rm -rf /opt/cloud9                       #source download and build directory
sudo rm /etc/default/cloud9                   #environment variables
sudo rm /lib/systemd/system/cloud9.*          #systemd scripts
sudo systemctl daemon-reload                  #restart/reload systemctl deamon


sudo systemctl stop bonescript-autorun.service        #stop currently running copy
sudo systemctl stop bonescript.service
sudo systemctl stop bonescript.socket
sudo systemctl disable bonescript-autorun.service     #purge autorun scripts
sudo systemctl disable bonescript.service
sudo systemctl disable bonescript.socket
sudo rm /lib/systemd/system/bonescript*               #startup scripts
sudo rm -rf /usr/local/lib/node_modules/bonescript    #binaries
sudo systemctl daemon-reload                          #restart/reload systemctl deamon

sudo apt-get update
sudo apt-get purge avahi-daemon

sudo apt-get install mosquitto

sudo npm install -g --unsafe-perm node-red

#cd /usr/local/lib/node_modules/node-red

#sudo npm install -g node-red-node-mongodb



