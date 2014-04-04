cat HEADER

echo "" > tmp

for i in 36 72 60 90 180 144 120 108
do
    cat BURGER | sed s/ANGLE/${i}/ | sed s/NAME/Bis${i}/
    echo "Bis${i} 125" >> tmp
done

cat FOOTER
cat tmp
