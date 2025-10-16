#!/bin/bash

echo -e "\n[Running change_bin] Deleting telnet, nc; changing to curlbk, wgetbk..."

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

rm $(which telnet) 2>/dev/null
rm $(which nc) 2>/dev/null

mv $(which curl){,bk} 2>/dev/null
mv $(which wget){,bk} 2>/dev/null

echo "[Completed change_bin]"
