#!/bin/bash
clear
cat << EOT
                              
 ███   ██  ████████    ▒████▒ 
 ███   ██  ████████   ▓██████ 
 ███▒  ██  ██        ▒██▒  ░█ 
 ████  ██  ██        ██▓      
 ██▒█▒ ██  ██        ██░      
 ██ ██ ██  ███████   ██       
 ██ ██ ██  ███████   ██       
 ██ ▒█▒██  ██        ██░      
 ██  ████  ██        ██▓      
 ██  ▒███  ██        ▒██▒  ░█ 
 ██   ███  ██         ▓██████ 
 ██   ███  ██          ▒████▒ 
                              
[Kris Occhipinti - http://FilmsByKris.com]
[                 GPLv3                  ]            
==========================================
EOT

#check if espeak is installed
if [ ! -f /usr/bin/espeak ]
then
  echo "espeak is not installed!!!"
  echo "try this: sudo apt install espeak"
  echo "goodbye"
  exit 1
fi

while [ 1 ]
do 
  echo "[Scan Card]"
  read n
  echo "$n"
  espeak $n
done
