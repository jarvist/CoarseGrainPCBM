#!/bin/sh

# This file forked from:
# runToFET_from_CGPCBM_simulations.sh - JMF 2013-01
#
# Takes 'PDB' files from CG simulation (containing atoms 'C' to represent the C60 bead),
# and generates the necessary .edges and .xyz file to run ToFET, with a given ('tof.sim') simulation setup
#
# 2013-01-23 - nasty hard coded fudges to declare the 'g'ates and 'c'ontacts for TOFET in XYZ

module load gromacs/4.6 gromacs/4.5.4 mpi intel-suite

for sigma in 0.000 0.021 0.056 0.072 0.121 0.250 0.500
do
#sigma=0.050

PWD=` pwd `

for data 
do

cat > "${data}_TOF_${sigma}_job.sh" << EOF
#!/bin/sh
#PBS -l walltime=0:59:59
#PBS -l select=1:ncpus=1:mem=1GB

module load gromacs/4.6 gromacs/4.5.4 mpi intel-suite

#cd ${PWD}
TMPD=` pwd `
data=${data}

cp  "${PWD}/tof.sim" ./

#OK, let's generate our edges (connection data)
# # with our dirty little C code program, and a bit of AWK manipulation
pdbcat -fields "${PWD}/${data}"  | grep " C " | awk 'BEGIN{print 100000, 20}{print \$10,\$11,\$12}'  | gen_edges > ${data%.*}.edges

#pdbcat -fields bis_5ns.pdb  | grep " C " | awk '{print $10,$11,$12,"-"}' > bis.xyz

#OK, let's generate XYZ coordinates, with definition of the contacts / gate edges
pdbcat -fields "${PWD}/${data}"  | grep " C " | awk 'func r(){return sqrt(-2*log(rand()))*cos(6.2831853*rand())} {if (\$12 < 50.0 ) {print \$10,\$11,\$12,"g",${sigma}*r()} else if (\$12 > 400.0) {print \$10,\$11,\$12,"c",${sigma}*r()} else {print \$10,\$11,\$12,"-",${sigma}*r()}}' >  ${data%.*}.xyz
tft tof.sim  ${data%.*}.xyz ${data%.*}.edges | tee  ${data%.*}.tofet

cp  ${data%.*}.tofet "${PWD}/${data%.*}_TOF_${sigma}.tofet"
EOF

qsub "${data}_TOF_${sigma}_job.sh"

done

done
