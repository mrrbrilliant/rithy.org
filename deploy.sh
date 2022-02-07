#!/bin/bash
set -e

git submodule update --init --recursive
hugo --minify

chmod 755 $1/public
find $1/public -type f -exec chmod 644 {} \;
find $1/public -type d -exec chmod 755 {} \;

cp -r $1/public $2/rithy.org