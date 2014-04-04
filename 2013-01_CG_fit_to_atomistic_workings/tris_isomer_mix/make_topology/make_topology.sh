IFS=$'\n'
angles=( ` cat "isomers.dat" `)

cat HEADER

echo "" > tmp

for i in "${angles[@]}" 
do
     IFS=" "
    NAME=` echo $i | awk '{print $1}' `
       A=` echo $i | awk '{print $2}' `
       B=` echo $i | awk '{print $3}' `
       C=` echo $i | awk '{print $4}' ` #I feel really dirty

    cat BURGER | sed -e s/ANGLEA/${A}/ -e s/ANGLEB/${B}/ -e s/ANGLEC/${C}/ -e s/NAME/${NAME}/
    echo "${NAME} 22" >> tmp
done

cat FOOTER
cat tmp
