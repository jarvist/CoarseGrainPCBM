for FILE
do

cp $FILE input.pdb

    for i in ` seq -w 9 1 30 `
    do
        cat packmol_dimers.inp | sed s/X/${i}/ | sed s/OUTPUT/${FILE%.*}_SEP_${i}.pdb/ | ~/PACKMOL/packmol/packmol 
#        . b3lyp_jobs_and_shell_script_from_pdb.sh ${FILE%.*}_SEP_${i}.pdb
    done

done
