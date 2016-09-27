# BASH Scripts for Embedding Helper QA

These scripts are designed to speed up the process of making the baseQA for
STAR Embedding Helper. They are also designed to circumvent the memory leak in
the doEmbeddingQAMaker macro by splitting the QA making into sub-processes.
Here is how to use them:

1) Edit makeMcLists.sh so that the directory points to the embedding location
with a correct path to minimc.root. You must use wildcards properly to allow
access to all minimc.root files for a given FSET. Adjust the range of the
sequence to make a file list for each FSET.

2) ./makeMcLists.sh

3) Edit doEmbeddingMakerQA.C to have all the correct settings. This scheme
assumes that doEmbeddingMakerQA.C is set to work on mudst.list, that
isSimulation = kFALSE, and the outputFileName is "qa\\_real\\_2014\\_P15ic.root"
where the year and library are changed to match the current embedding request.

4) Edit makeDoEmbeddingMaker.sh to have the correct library and year name, as
well as the correct range for the FSETs (must be the same as makeMcLists.sh

5) ./makeDoEmbeddingMaker.sh

6) Edit runMultidoEmbeddingQAMaker.sh to have the right number of FSETs. Also
select if you want to re-run the mudst list (it takes longer and is not
necessary if you've already processed it once with the correct trigger
selections)

7) ./runMultidoEmbeddingQAMaker.sh

8) hadd qa\\_embedding\\_2014\\_P15ic.root qa\\_embedding\\_2014\\_P15ic\\_*.root

9) edit drawEmbeddingQAMaker.C; root4star -l -b -q drawEmbeddingQAMaker.C
