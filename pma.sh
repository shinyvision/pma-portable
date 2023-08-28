#!/bin/sh
PMA__MYDIR=$(pwd);
PMA__DEST='.'$(date +%s | sha256sum | cut -c -64)
PMA__CONF_LOC="$HOME/.local/share/pma-files/config.inc.php"

wget -q $(curl -s 'https://www.phpmyadmin.net/downloads/' --compressed | grep --color=never -o 'https://[^"]*.zip' | head -n 1) -O $PMA__DEST.zip;
unzip -qq $PMA__DEST.zip && mv ./phpMyAdmin* $PMA__DEST;
rm -f $PMA__DEST.zip;
cd $PMA__DEST;

if [ -f "$PMA__CONF_LOC" ]; then
  cp $PMA__CONF_LOC ./config.inc.php
fi

echo "Starting web server for phpMyAdmin! Go to http://localhost:8019 to start messing around with your databases!"
php -qS localhost:8019 >& /dev/null;
echo "Thank you for using this crappy script!"
cd $PMA__MYDIR;
rm -rf $PMA__MYDIR/$PMA__DEST;
