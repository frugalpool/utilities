#!/bin/bash

# output address  with filename and search string as inputs
# $1 :  name of file that contains output of createAddress.sh
# $2 :  string that contains unique characters for address type
#    ed25519e
#    ed25519_
#    addr


while getopts ":f:t:" arg; do
  case $arg in
    f) Filename=$OPTARG;;
    t) Type=$OPTARG;;
  esac
done
#echo -e "\n$Filename  $Type \n"

inputFile=$Filename

if [ $Type == "private" ]
then
  choice="ed25519e"
elif [ $Type  == "public" ]
then
  choice="ed25519e_"
elif [ $Type  == "address" ]
then
  choice="addr"
else
  "please specify -t"
  exit 1
fi



#address=`awk '{print $2}' createAddress5.ouput | grep $choice`
address=`awk '{print $2}' ${inputFile} | grep $choice`

echo $address


exit 0
