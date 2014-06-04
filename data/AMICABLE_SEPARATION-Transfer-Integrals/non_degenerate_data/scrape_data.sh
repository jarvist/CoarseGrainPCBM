 grep LUMO *mono*.txt | sed s/_/\ /g | cut -f5,11- -d\  > M.dat
 grep LUMO *bis*.txt | sed s/_/\ /g | cut -f6,12- -d\  > B.dat
 grep LUMO *tris*.txt | sed s/_/\ /g | cut -f6,12- -d\  > T.dat
