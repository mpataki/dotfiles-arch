#! /bin/bash

. lib/helpers.sh

function setup_thinkpad() {
  yaourt_sync fwupd
  yaourt_sync dmidecode
  yaourt_sync sof-firmware
  yaourt_sync alsa-utils

  check_and_link_file `pwd`/thinkpad/disable-dmic.conf /etc/modprobe.d/disable-dmic.conf

  print_with_color $GREEN 'Remember to run firmware upgrades as decribed here: https://wiki.archlinux.org/index.php/fwupd'
}

print_with_color $YELLOW 'Setup thinkpad specific requirements? (yes/no)'
read yn
case $yn in
  yes|Yes|YES|Y|y ) setup_thinkpad;;
  * ) print_with_color $GREEN 'skipping...';;
esac
