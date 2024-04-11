#!/bin/bash

dir=$1

num=1
Schaefer=Schaefer2018_116Parcels_7Networks_inclHippHarvardOxford_float.mnc

source /opt/minc/1.9.18/minc-toolkit-config.sh 

for i in $(ls ${dir}/gradient*_template.txt); do 
minclookup -clobber -discrete -lookup_table $i ${Schaefer} ${dir}/schaefer2dwi_grad$num.mnc;num=$(bc <<< "${num}+1")
done

for i in $(ls ${dir}/schaefer2dwi*.mnc); do mnc2nii $i;done
