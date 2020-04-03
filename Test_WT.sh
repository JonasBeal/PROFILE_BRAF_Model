#!/bin/sh
list1="Proliferation_b1,Proliferation_b2"

#Please first cd to the parent folder
python3 Scripts/Simulations/MaBoSS_PROFILE_drugs.py BRAF_Model -sy Mac -p 2 "BRAF_Model_CL_n5000_t100.txt" -o $list1 -s "n5000_t100" 





