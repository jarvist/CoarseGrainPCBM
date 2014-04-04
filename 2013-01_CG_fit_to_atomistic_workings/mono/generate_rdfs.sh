echo "2 2" | g_rdf -rdf mol_com -s topol.tpr -n index.ndx
mv rdf.xvg P-P.xvg
echo "2 3" | g_rdf -rdf mol_com -s topol.tpr -n index.ndx
mv rdf.xvg P-C.xvg
echo "3 3" | g_rdf -rdf mol_com -s topol.tpr -n index.ndx
mv rdf.xvg C-C.xvg
