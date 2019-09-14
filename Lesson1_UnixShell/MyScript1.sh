#!/bin/bash 

cut -f1,3,4 Data/ByCountry/Mexico.txt | sort -k3n | tail -n1 > Highest_LE_Mexico2.txt