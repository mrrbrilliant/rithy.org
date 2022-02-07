#!/bin/bash

hugo
sudo rm -rf /var/www/rithy.org
sudo cp -r public /var/www/rithy.org
cd /var/www
sudo chmod 755 rithy.org
sudo find rithy.org -type f -exec chmod 644 {} \;
sudo find rithy.org -type d -exec chmod 755 {} \;
