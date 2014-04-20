 grep LUMO *mono*.txt | grep Triply |sed s/_/\ /g | cut -f5,11- -d\  > M-3.dat
 grep LUMO *bis*.txt  | grep Triply |sed s/_/\ /g | cut -f6,12- -d\  > B-3.dat
 grep LUMO *tris*.txt | grep Triply |sed s/_/\ /g | cut -f6,12- -d\  > T-3.dat

 grep LUMO *mono*.txt | grep Non_degenerate |sed s/_/\ /g | cut -f5,11- -d\  > M.dat
 grep LUMO *bis*.txt  | grep Non_degenerate |sed s/_/\ /g | cut -f6,12- -d\  > B.dat
 grep LUMO *tris*.txt | grep Non_degenerate |sed s/_/\ /g | cut -f6,12- -d\  > T.dat
