#!/bin/sh

# This file forked from:
# runToFET_from_CGPCBM_simulations.sh - JMF 2013-01
#
# Takes 'PDB' files from CG simulation (containing atoms 'C' to represent the C60 bead),
# and generates the necessary .edges and .xyz file to run ToFET, with a given ('tof.sim') simulation setup
#
# 2013-01-23 - nasty hard coded fudges to declare the 'g'ates and 'c'ontacts for TOFET in XYZ

# files look like: B_00013_TOF_0.121.tofet

for sigma in 0.000 0.021 0.056 0.072 0.121 0.250 #0.500
do

    for mole in M B T T-EEE B-E1 
    do

        #B-E1_00018_TOF_0.250.tofet:> MOBILITY FROM TOTAL DISPLACEMENT AND TOTAL TIME (cm^2/V.s)= 9.11653e-12
        #B-E1_00018_TOF_0.250.tofet:> MOBILITY FROM COLLECTION TIMES (cm^2/V.s)= 1.9911e-07


        for file in ${mole}_?????_TOF_${sigma}.tofet
        do
            mu=` grep MOBILITY ${file} | grep DISPLACEMENT | awk '{print  $10}' ` #$7 for COLLETION; $10 for DISPLACEMENT
            # Joe, why didn't you make this just a little more sane? :^)
            echo $mole $sigma $mu
        done
    done

done
