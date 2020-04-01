#!/bin/sh
list1="Proliferation_b1,Proliferation_b2"

#Please first cd to the parent folder
#With mut
python3 Scripts/Simulations/MaBoSS_specific_drugs_py.py BRAF_Model -sy Mac -p 2 "BRAF_Model_CLext_mut.txt" -o $list1 -s "mut" -m "Results/Profiles/BRAF_Model_CLext_mut.csv" -d "Results/Profiles/BRAF_Model_drug_profiles.csv"

#RNA alone
python3 Scripts/Simulations/MaBoSS_specific_drugs_py.py BRAF_Model -sy Mac -p 2 "BRAF_Model_CLext_RNA.txt" -o $list1 -s "RNA" -rb "Results/Profiles/BRAF_Model_CLext_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"

#All
python3 Scripts/Simulations/MaBoSS_specific_drugs_py.py BRAF_Model -sy Mac -p 2 "BRAF_Model_CLext_mut_RNA.txt" -o $list1 -s "mut_RNA" -m "Results/Profiles/BRAF_Model_CLext_mut.csv" -rb "Results/Profiles/BRAF_Model_CLext_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"





