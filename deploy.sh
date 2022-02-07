#!/bin/bash

git submodule update --init --recursive
hugo --minify

if [[ $1 == "dev" ]]; then
	sudo rm -rf /var/www/rithy.org
	sudo cp -r public /var/www/rithy.org
	cd /var/www
else
	sudo rm -rf /kmp/www/rithythul/rithy.org
	sudo cp -r public /kmp/www/rithythul
	cd /kmp/www/rithythul
fi

sudo chmod 755 rithy.org
sudo find rithy.org -type f -exec chmod 644 {} \;
sudo find rithy.org -type d -exec chmod 755 {} \;
