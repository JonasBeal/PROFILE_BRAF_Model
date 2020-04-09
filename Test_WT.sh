#!/bin/sh
list1="Proliferation_b1,Proliferation_b2"

#Please first cd to the parent folder
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py BRAF_Model -sy Mac -p 2 "Tests/BRAF_Model_CL_n5000_t100.txt" -o $list1 -s "n5000_t50" -rb "Results/Profiles/BRAF_Model_Test.csv" -rf 100


#for i in {1..100}
#do
#   python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py BRAF_Model -sy Mac -p 1 "Tests/BRAF_Model_CL_n5000_t50_"$i".txt" -o $list1 -s "n5000_t50" 
#done



