#!/bin/sh


#Please first cd to the parent folder

model1="BRAF_Model"
list1="Proliferation_b1,Proliferation_b2"

#With mut
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model1 -sy Mac -p 3 $model1"_CL_mut.txt" -o $list1 -s "mut" -m "Results/Profiles/"$model1"_CL_mut.csv" -d "Results/Profiles/"$model1"_drug_profiles.csv"

#RNA alone
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model1 -sy Mac -p 3 $model1"_CL_RNA.txt" -o $list1 -s "RNA" -rb "Results/Profiles/"$model1"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/"$model1"_drug_profiles.csv"

#All
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model1 -sy Mac -p 3 $model1"_CL_mut_RNA.txt" -o $list1 -s "mut_RNA" -m "Results/Profiles/"$model1"_CL_mut.csv" -rb "Results/Profiles/"$model1"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/"$model1"_drug_profiles.csv"

#Additional logical model
#model2="Flobak"
#list2="Prosurvival_b1,Prosurvival_b2,Prosurvival_b3,Antisurvival_b1,Antisurvival_b2,Antisurvival_b3"

#With mut
#python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model2 -sy Mac -p 3 $model2"_CL_mut.txt" -o $list2 -s "mut" -m "Results/Profiles/"$model2"_CL_mut.csv" -d "Results/Profiles/"$model2"_drug_profiles.csv"

#RNA alone
#python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model2 -sy Mac -p 3 $model2"_CL_RNA.txt" -o $list2 -s "RNA" -rb "Results/Profiles/"$model2"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/"$model2"_drug_profiles.csv"

#All
#python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py $model2 -sy Mac -p 3 $model2"_CL_mut_RNA.txt" -o $list2 -s "mut_RNA" -m "Results/Profiles/"$model2"_CL_mut.csv" -rb "Results/Profiles/"$model2"_CL_RNA_norm.csv" -rf 100 -d "Results/Profiles/"$model2"_drug_profiles.csv"




