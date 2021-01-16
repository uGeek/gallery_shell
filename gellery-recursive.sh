#!/bin/bash
#
# Copia gallery.sh en:
# cp gallery.sh /usr/bin/gallery ; sudo chmod +x /usr/bin/gallery
#
# Ejecuta: gellery-recursive.sh
#


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
