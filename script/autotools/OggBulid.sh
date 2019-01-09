#!/bin/bash

PROJECTNAME="Ogg"
echo -e \
"---------------------------------------------------------------------------------
${PROJECTNAME} Building Script"

if [ $# -lt 1 ]; then
  echo -e \
"---------------------------------------------------------------------------------
WARING: Please inter your configure file path!"
  echo -e \
"---------------------------------------------------------------------------------
Like this: ${PROJECTNAME}Build.sh [configure file path] <system>
-- system: default     - - -
           android     Using arm-linux-androideabi
           arm-linux   Using arm-linux-gnueabihf
           arm-openwrt Using arm-openwrt-linux
           Yingyongbao Using aarch64-poky-linux" 
  echo -e \
"---------------------------------------------------------------------------------
If you do not want install in the default path, please inter this option at last
      --prefix=[your/path] --with-pic"
  exit
fi

cmd="$1/configure"
shift

case "$1" in
  android)
  echo  "Using arm-linux-androideabi ..."
  cmd="$cmd --host=arm-linux-androideabi"
  shift
  ;;
  arm-linux)
  echo "Using arm-linux-gnueabihf ..."
  cmd="$cmd --host=arm-linux-gnueabihf"
  shift
  ;;
  arm-openwrt)
  echo "Using arm-openwrt-linux ..."
  cmd="$cmd --host=arm-openwrt-linux"
  shift
  ;;
  Yingyongbao)
  echo "Using aarch64-poky-linux ..."
  cmd="$cmd --host=aarch64-poky-linux"
  shift
  ;;
  *)
  ;;
esac

echo "$cmd $@"
$cmd $@
