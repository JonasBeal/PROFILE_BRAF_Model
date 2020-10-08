#!/bin/sh
list1="Proliferation_b1,Proliferation_b2,BRAF,PTEN,AKT,PDPK1,p70_b1,p70_b2,ERK_b1,ERK_b2,MEK_b1,MEK_b2"
list2="RAS,SOS,GRB2,SPRY,PI3K,GAB1,EGF,EGFR,HGF,MET,CRAF,FGF"
list3="FGFR2,FRS2,TSC2,mTOR,RHEB,SOX10,FOXD3,ERBB3,ERBB2,ATM,p53,p21,MDM2"




#Please first cd to the parent folder

model="BRAF_Model"

#With mut
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_ALL1.txt" -o $list1 -s "mut" -m "Results/Profiles/"$model"_CL_mut.csv" -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_ALL2.txt" -o $list2 -s "mut" -m "Results/Profiles/"$model"_CL_mut.csv" -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_ALL3.txt" -o $list3 -s "mut" -m "Results/Profiles/"$model"_CL_mut.csv" -d "Results/Profiles/BRAF_Model_drug_profiles.csv"

#RNA alone
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_RNA_ALL1.txt" -o $list1 -s "RNA" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_RNA_ALL2.txt" -o $list2 -s "RNA" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_RNA_ALL3.txt" -o $list3 -s "RNA" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"

#All
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_RNA_ALL1.txt" -o $list1 -s "mut_RNA" -m "Results/Profiles/"$model"_CL_mut.csv" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_RNA_ALL2.txt" -o $list2 -s "mut_RNA" -m "Results/Profiles/"$model"_CL_mut.csv" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model -sy Mac -p 2 $model"_CL_mut_RNA_ALL3.txt" -o $list3 -s "mut_RNA" -m "Results/Profiles/"$model"_CL_mut.csv" -rb "Results/Profiles/"$model"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/BRAF_Model_drug_profiles.csv"





