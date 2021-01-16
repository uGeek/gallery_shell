#!/bin/bash
#
# Copia gallery.sh en:
# cp gallery.sh /usr/bin/gallery ; sudo chmod +x /usr/bin/gallery
#
# Ejecuta: gellery-recursive.sh
#
#  https://gist.github.com/uGeek/95c48211636b638a2a0cab8ac0c611bc


OLDIFS=$IFS
IFS=$'\n'
echo "Starting gallery..."
DIRECTORIES=$(find -type d)

# loop over all subdirectories
for d in $DIRECTORIES
do
  pushd $d

  gallery

  # jump back
  popd
done

IFS=$OLDIFS
echo "Gallery ready."
