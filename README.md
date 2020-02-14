# PROFILE_BRAF_Model
Repository for the project about personalized logical models to study response to BRAF inhibitors

Here are the the data files, scripts and plots supporting the study provided in the article. Please refer to the corresponding article for additional explanations regarding the context and the methods.
Code about model checking is available in another Github repository: https://github.com/LPantolini/MaBoSS_test

All results file and analysis are already available. In particular, main analysis and reproduction of article plots are available in:

* Scripts/Analysis/CL_Analysis_All.html

It also possible to reproduce theses steps following the instructions below.

## Preliminary steps

Some data files are too heavy and must be downloaded by the user. Please replace the following empty datafiles by the files downloaded according to the provided links:

* Data/CL/03_scaledBayesianFactors.tsv
* Data/CL/scaledBayesianFactors.tsv
* Data/CL/mutations_20191101.csv
* rnaseq_fpkm_20191101

One data file has to be decompressed:

* pph2-full_all.txt.zip

## Generation of cell line profiles

Run the Rmd script:

* Scripts/Profiles/CL_profiles.Rmd

## Simulation of personalized logical models

Run the bash script:

* BRAF_CL.sh

Please import the appropriate dependencies mentioned at the beginning of the simulation script:

* Scripts/Simulations/MaBoSS_specific_drugs_py.py

## Analysis and article plots

Run the Rmd script:

* Scripts/Analysis/CL_Analysis_All.Rmd