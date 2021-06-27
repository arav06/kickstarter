#!/bin/bash

#./kickstarter.sh Name IP

name=$1
ip=$2

# Checking if the Name/IP variables are empty

if [$name == ""] ;then
        echo "./kickstarter.sh Name IP"

elif [$ip == ""] ;then
        echo "./kickstarter.sh Name IP"

else
        echo -e "\n"
        echo -e "\n"
        # Pinging the IP

        echo "[+]Pinging "$ip
        sleep 0.5
        ping $ip -w 4

        # Creating required files and directories
        echo -e "\n"
        echo -e "\n"
        echo "[+]Creating files and directories"
        sleep 1
        mkdir $name
        cd $name
        mkdir nmap
        mkdir logs
        mkdir exploits
        mkdir flags
        touch README.md
        echo "# "$name >> README.md
        date +"%d-%m-%y" >> README.md
        echo "" >> README.md
        echo "IP: "$ip >> README.md
        cd flags
        touch root.txt
        touch user.txt
        cd ..
        echo -e "\n"
        ls

        # Starting Nmap
        echo -e "\n"
        echo -e "\n"
        echo "[+]Starting Nmap Initial Scan"
        sleep 0.5
        nmap -vvv -sVC -A -T4 -oN ./nmap/initial.txt $ip

        echo -e "\n"
        echo -e "\n"
        echo "[+]Starting Nmap All Ports Scan, this may not be 100% accurate"
        sleep 0.5
        nmap -vvv -p- -T4 --max-retries 1 -oN ./nmap/all_ports.txt $ip


fi
