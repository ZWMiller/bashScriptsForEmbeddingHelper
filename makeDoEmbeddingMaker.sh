#!/bin/bash
year=2014
library="p15ic"

for i in `seq 0 5`;
do
  if [ -e doEmbeddingQAMaker${i}.C ]; then
    rm doEmbeddingQAMaker${i}.C
  fi
  cp doEmbeddingQAMaker.C doEmbeddingQAMaker${i}.C
  sed -i -e s/doEmbeddingQAMaker\(/doEmbeddingQAMaker${i}\(/g doEmbeddingQAMaker${i}.C
  sed -i -e s/mudst.list/minimc${i}.list/g doEmbeddingQAMaker${i}.C
  sed -i -e s/kFALSE/kTRUE/g doEmbeddingQAMaker${i}.C
  sed -i -e s/qa_real_${year}_${library}/qa_embedding_${year}_${library}_${i}/g doEmbeddingQAMaker${i}.C
done 
