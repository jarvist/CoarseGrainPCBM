%Mem=8Gb
%nproc=8
# b3lyp/6-31g* punch=mo iop(3/33=1) nosymm

Automagically prepared Gaussian Input: JMF 12-9-11  'DA/packmol_dimers' project

0 1
C          -2.29600         4.34800         8.75300
H          -2.28800         3.93100         7.75000
C          -1.91100         5.67500         8.95300
H          -1.61000         6.28200         8.10300
C          -1.91100         6.21800        10.23800
H          -1.60900         7.25000        10.39500
C          -2.30100         5.42800        11.32100
H          -2.30500         5.84300        12.32600
C          -2.68600         4.10400        11.11900
H          -2.98800         3.49300        11.96600
C          -2.68700         3.54700         9.83300
C          -3.19000         2.13500         9.62700
C          -4.72000         2.04100         9.52900
H          -5.02700         0.99100         9.55300
H          -5.14200         2.51900        10.41900
C          -5.29800         2.70500         8.27100
H          -5.06900         3.77500         8.27500
H          -4.82000         2.27400         7.38200
C          -6.81300         2.51600         8.13400
H          -7.09300         1.45600         8.19000
H          -7.15400         2.85700         7.14700
C          -7.62200         3.27600         9.16900
O          -7.18300         4.07200         9.97300
O          -8.93400         2.96400         9.07300
C          -9.80100         3.64900         9.99300
H          -9.73900         4.73100         9.84700
H          -9.52800         3.41500        11.02500
H         -10.80600         3.28800         9.77100
C           3.86800         2.56700        12.09300
H           3.00300         3.12000        11.74100
C           4.47700         2.92400        13.29700
H           4.08300         3.75800        13.87200
C           5.58500         2.21300        13.76100
H           6.05700         2.49000        14.69900
C           6.08100         1.14400        13.01300
H           6.94300         0.58400        13.36600
C           5.47100         0.78800        11.81100
H           5.86100        -0.04600        11.23400
C           4.35700         1.49400        11.33700
C           3.76800         1.14300         9.98900
C           4.52700         1.77200         8.81200
H           5.58100         1.48700         8.90500
H           4.16500         1.35100         7.86900
C           4.41800         3.30200         8.75200
H           4.85900         3.74300         9.65200
H           3.35900         3.59000         8.73400
C           5.09600         3.90000         7.51400
H           4.72400         3.44000         6.59000
H           4.85800         4.96900         7.42800
C           6.60900         3.78400         7.52900
O           7.28600         3.42800         8.47100
O           7.13000         4.15500         6.33800
C           8.56400         4.11200         6.25100
H           9.01500         4.78600         6.98500
H           8.80600         4.43200         5.23700
H           8.93000         3.09800         6.43200
C          -2.47100         1.02300        10.37000
C          -2.36500         1.19400         8.77000
C          -0.98800         1.43900         8.24300
C           0.11600         1.66300         9.05700
C           0.01800         1.51000        10.51600
C          -1.18000         1.13900        11.11400
C          -1.15200         0.15000        12.15000
C          -2.30400        -0.71800        11.99000
C          -3.05700        -0.26700        10.84400
C          -3.62100        -1.20500         9.99200
C          -3.52400        -1.05000         8.52600
C          -2.86900         0.03800         7.96600
C          -1.96500        -0.17700         6.86100
C          -0.81300         0.68700         7.03700
C           0.45900         0.25400         6.64300
C           1.60400         0.53800         7.46900
C           1.43500         1.25100         8.65200
C           2.26100         1.00800         9.87200
C           1.27600         1.00000        10.99400
C           1.30300         0.05800        12.01500
C           0.06400        -0.37500        12.60600
C           0.16700        -1.78900        12.92000
C          -0.94200        -2.62200        12.77700
C          -2.20300        -2.07600        12.30000
C          -2.81800        -3.05000        11.43300
C          -3.50200        -2.61800        10.29000
C          -3.34000        -3.33800         9.04100
C          -3.34700        -2.37200         7.95800
C          -2.51500        -2.56600         6.85000
C          -1.80600        -1.44200         6.29100
C          -0.48500        -1.89500         5.88100
C           0.62100        -1.06600         6.05900
C           1.87800        -1.61200         6.53400
C           2.49900        -0.63300         7.40500
C           3.20400        -1.05000         8.52500
C           3.24900        -0.27300         9.80100
C           3.04800        -1.29600        10.87200
C           2.19900        -1.11000        11.95200
C           1.48300        -2.24100        12.51000
C           1.63400        -3.52200        11.96700
C           0.47800        -4.38800        11.80500
C          -0.78600        -3.94700        12.20300
C          -1.94500        -4.21000        11.36700
C          -1.79500        -4.90300        10.16400
C          -2.51000        -4.45900         8.97800
C          -1.64000        -4.65600         7.82900
C          -1.64200        -3.72700         6.78700
C          -0.38800        -3.31300         6.18300
C           0.81900        -3.84400         6.64200
C           1.97400        -2.98000         6.81500
C           2.68000        -3.41000         7.99800
C           3.25700        -2.45500         8.84000
C           3.16100        -2.60600        10.28100
C           2.49300        -3.70900        10.82400
C           1.88100        -4.69300         9.94700
C           1.97300        -4.54700         8.56300
C           0.81800        -4.81500         7.72300
C          -0.38800        -5.21200         8.30500
C          -0.48400        -5.36300         9.75000
C           0.63000        -5.11200        10.55400
