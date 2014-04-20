for FILE
do
 new=` echo "${FILE}" | sed -e s/PCBM_MBT_PDBS// -e s/_b3lyp_tddft// `
 cp "${FILE}" "./${new}"
done
