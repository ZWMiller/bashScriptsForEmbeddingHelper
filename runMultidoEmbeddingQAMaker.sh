#!/bin/bash

starver SL15e_embed

runMuDst=1
year=2014
library="P15ic"

for i in `seq 0 5`;
do
  if [ -e qaMC${i}.log ]; then
    rm qaMC${i}.log
  fi
  if [ -e qa_embedding_${year}_${library}_${i}.root ]; then
    rm qa_embedding_${year}_${library}_${i}.root 
  fi
  root4star -l -b -q doEmbeddingQAMaker${i}.C &> qaMC${i}.log &
done

if [ $runMuDst -eq 1 ]; then
  if [ -e qaREAL.log ]; then
    rm qaREAL.log
  fi
  if [ -e qa_real_${year}_${library}.root ]; then
    rm qa_real_${year}_${library}.root 
  fi
  root4star -l -b -q doEmbeddingQAMaker.C &> qaREAL.log &
fi
