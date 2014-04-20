for file 
do
echo "Creating job for PDB file: ${file}"    
#separate out A and B molecules
 grep -v "UNK B" "${file}" > A.pdb
 grep -v "UNK A" "${file}" > B.pdb
#Now we have coords of both in $file, molecule A in A.pdb and B in B.pdb

 babel -ipdb A.pdb -ogau "${file%.*}_A.com"
 babel -ipdb B.pdb -ogau "${file%.*}_B.com"
 babel -ipdb "${file}" -ogau "${file%.*}_AB.com"

 for QCJOB in "${file%.*}_A.com" "${file%.*}_B.com" "${file%.*}_AB.com"
 do
  #Header for Gaussian job
  cat > "${QCJOB%.*}_B3LYP.com" << EOF
%Mem=8Gb
%nproc=8
# b3lyp/6-31g* punch=mo iop(3/33=1) nosymm

Automagically prepared Gaussian Input: JMF 12-9-11  'DA/packmol_dimers' project

0 1
EOF
  #OK, header written, now for the coordinates
  tail -n+6 "${QCJOB}" >> "${QCJOB%.*}_B3LYP.com"
 done

# OK; now write the shell script for running on CX1, running the three DFT jobs, then the projective malarkey
cat > "${file%.*}_CX1.sh" << EOF
#!/bin/sh
#PBS -l walltime=71:58:02
#PBS -l select=1:ncpus=8:mem=11800mb

module load gaussian octave intel-suite

cat > ${file%.*}_A_B3LYP.com << EOW
EOF

#OK; this clever stuff allows you to inline the .com files within the .sh file
#so there's only one thing to push around to the cluster / backup etc.
# This is a good thing. However, dealing with the EOWs EOFs HURTS MY BRAIN

cat ${file%.*}_A_B3LYP.com >> "${file%.*}_CX1.sh"

cat >> "${file%.*}_CX1.sh" << EOF
EOW

g03 "${file%.*}_A_B3LYP.com"
mv fort.7 "${file%.*}_A_B3LYP.pun"

cat > ${file%.*}_B_B3LYP.com << EOW
EOF

cat ${file%.*}_B_B3LYP.com >> "${file%.*}_CX1.sh"

cat >> "${file%.*}_CX1.sh" << EOF
EOW

g03 "${file%.*}_B_B3LYP.com"
mv fort.7 "${file%.*}_B_B3LYP.pun"

cat > ${file%.*}_AB_B3LYP.com << EOW
EOF

cat ${file%.*}_AB_B3LYP.com >> "${file%.*}_CX1.sh"

cat >> "${file%.*}_CX1.sh" << EOF
EOW

g03 "${file%.*}_AB_B3LYP.com"
mv fort.7 "${file%.*}_AB_B3LYP.pun"

# (~_^)
grep "basis functions," "${file%.*}_A_B3LYP.log" | awk '{print $"1"}' > tmp 
grep "alpha electrons" "${file%.*}_A_B3LYP.log" | awk '{print $"1"}' >> tmp

 ~/bin/rewrite_S_phi_E.x "${file%.*}_A_B3LYP" "${file%.*}_B_B3LYP" "${file%.*}_AB_B3LYP"
 cat tmp | octave /work/jmf02/AMICABLE_SEPARATION/get_J_interactive.m > "${file%.*}_J.txt"

# What a piece of work is a job! how noble in reason!
# how infinite in faculty! in form and moving how
# express and admirable! in action how like an angel!
# in apprehension how like a god! the beauty of the
# world! the paragon of animals! And yet, to me,
# what is this quintessence of text? jobs delight not
# me: no, nor mpi neither, though by your smiling
# you seem to say so.

cp "${file%.*}_J.txt" /work/jmf02/AMICABLE_SEPARATION
cp *.com *.pun *.log /work/jmf02/AMICABLE_SEPARATION

EOF
done
