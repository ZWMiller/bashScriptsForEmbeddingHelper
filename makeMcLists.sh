#!/bin/bash

for i in `seq 0 5`;
do
  if [ -e minimc${i}.list ]; then
    rm minimc${i}.list
  fi
  if [ $i -lt 10 ]; then
    j="0${i}"
  else
    j="${i}"
  fi
ls /global/projecta/projectdirs/starprod/embedding/AuAu_200_production_2014/PositronBHT3_2${j}_20161901/P15ic.SL15e_embed/2014/*/*.minimc.root > minimc${i}.list 
echo "minimc${i}.list Made"
done 
