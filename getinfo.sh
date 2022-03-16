#!/bin/bash

path=/Users/mallephi/Documents/Infineon/CDC/notes/Get-Info/

echo "Please enter IP-Address: "
read ip

echo "Plese enter Foldername: "
read foldername

fullpath=$path$foldername

if [ ! -d "$path/$foldername" ]; then
  mkdir $fullpath
fi


echo "##############################################"
echo "IP-Address: $ip, Foldername: $foldername"
echo "##############################################"
echo "[+] Start getting information about IP-Address"
echo "[+]"
echo "[+] Starting with whois..."
whois $ip >> $fullpath/whois.md
echo "[+] finished, saved file..."
echo "[+]"
echo "[+] Starting with ipinfo..."
ipinfo $ip >> $fullpath/ipinfo.md
echo "[+] finished, saved file..."
echo "[+]"
echo "[+] Starting with nslookup..."
nslookup $ip >> $fullpath/nslookup.md
echo "[+] finished, saved file..."
echo "[+]"
echo "[+] Starting with Shodan..."
shodan host $ip >> $fullpath/shodan.md
echo "[+] finished, saved file..."
echo "[+]"
echo "[+] Starting with VirusTotal..."
vt ip $ip >> $fullpath/virustotal.md
echo "[+] finished, saved file..."
echo "[+]"
echo "##############################################"
echo "################# finished ###################"
echo "##############################################"


