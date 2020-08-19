#!/bin/bash

# Todo 
# subdomain 
# test for live one 
# prot scaner 



echo "Hello I M" 

if [ -z "$1"]
then    
        echo " Usage: ./recon+.sh <target.com> "
        exit 1

fi 



if [ ! -d "$1" ] ;then 
 mkdir -p "$1" 
else ; 
       echo "Seems Like old recon files are still present do want to see advance option? [y][n][e]"
        read opt 
        if [[opt == 'n']];
        then continue
        fi
        if [[opt === 'e']];
        then exit 0
        if [[opt === 'y']];
        then 
                while true; do
                echo -n "Which task you wannt to perfom ?"
                echo -n "1.Get assests & Subs "
                echo "2.Dirsearch"
                echo "3.Get all urls "
                echo "4.Fuzz with Fuff "
                echo "5.S3 Buckets"
                echo "6.GitHub Secrets"
                echo "7.Subdomin takeover"
                echo

                echo -n "Enter your choice, or 0 for exit: "
                read choice 
                echo 

                case $choice in
                    1)assetenum
                    ;;
                    2)
                    ;;
                    3)
                    $FORTUNE kerneln 
printf "\n-------------First thing First ---------\n" 
printf "\n-------------------Subs-----------------\n"
printf "\n-----------Assetfinder is Runing........\n."

cd $1 

assetfinder -subs-only $1 > assetsubs.txt
cat assetsubs.txt
printf "\n----------Fetching links for you----------\n"
httpx -title -content-length -status-code  -l assetsubs.txt > httpxsubs.txt

cut -d " " -f 1 httpxsubs.txt > suburls.txt






