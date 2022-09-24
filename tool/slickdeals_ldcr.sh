#!/bin/bash
#https://goto.target.com/c/10451/360518/2092?subid1=9855a650390211ed85c38641be08cf160INT&u=https%3A%2F%2Fwww.target.com%2Fp%2Flogitech-k350-wireless-ergonomic-keyboard-black%2F-%2FA-82675608

if [ "$#" -ne 1 ]
then
  echo "Missing input. Exit"
  echo "Usage:"
  echo "sh $0 <undecoded link>" 
  exit 1
fi


echo "$1" | awk -F"=https" '{print $2}' > output_tmp

sed -i 's/\%2F/\//g' output_tmp 
sed -i 's/%3A/:/g' output_tmp
sed -i 's/\%3F/?/g' output_tmp
sed -i 's/\%3D/=/g' output_tmp

cp output_tmp link.txt

echo -e "Link:\nhttps`cat link.txt`"
rm output_tmp link.txt
