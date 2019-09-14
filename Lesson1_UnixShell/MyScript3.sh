#!/bin/bash 

#cut -f1,3,4 Data/ByCountry/Mexico.txt | sort -k3n | tail -n1 > Highest_LE_Mexico.txt


#input=Data/ByCountry/Mexico.txt
#output=HighestLE2.txt

#cut -f1,3,4 $input | sort -k3n | tail -n1 > $output

input=$1

cut -f1,3,4 $input | sort -k3n | tail -n1