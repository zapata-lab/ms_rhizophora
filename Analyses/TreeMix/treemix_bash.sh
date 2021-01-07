#!/bin/bash

# Change input file accordingly

for i in {0..8}
do

treemix -i Filtered_VCFs/Rmangle_GBS_original_indiv75_miss80_maf03_bialleleCenterSNP.tmix.gz -o m"$i" -m $i -root mahahual -global -se

done
