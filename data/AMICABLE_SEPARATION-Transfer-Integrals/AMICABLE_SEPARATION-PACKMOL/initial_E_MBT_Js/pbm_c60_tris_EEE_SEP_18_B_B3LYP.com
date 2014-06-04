%Mem=8Gb
%nproc=8
# b3lyp/6-31g* punch=mo iop(3/33=1) nosymm

Automagically prepared Gaussian Input: JMF 12-9-11  'DA/packmol_dimers' project

0 1
C           0.65500         4.80700        18.21800
H          -0.27200         4.43100        18.63900
C           1.45700         5.66700        18.97100
H           1.14600         5.95300        19.97200
C           2.65400         6.15300        18.44300
H           3.28000         6.81900        19.03100
C           3.04500         5.77300        17.15800
H           3.97800         6.14200        16.73900
C           2.24300         4.91400        16.40700
H           2.55500         4.61700        15.40900
C           1.03700         4.42300        16.92700
C           0.14300         3.56600        16.05800
C          -0.71100         4.36200        15.05800
H          -1.24100         3.65800        14.41200
H          -0.02600         4.91400        14.40000
C          -1.74300         5.32800        15.68300
H          -2.11100         4.92800        16.63400
H          -2.62100         5.37400        15.03000
C          -1.22800         6.75600        15.88900
H          -0.35900         6.78400        16.55700
H          -0.88600         7.19100        14.94100
C          -2.28400         7.67500        16.47000
O          -3.39100         7.34300        16.83500
O          -1.82900         8.94800        16.54000
C          -2.75100         9.90100        17.09300
H          -3.66200         9.95200        16.48900
H          -2.22800        10.85800        17.07800
H          -3.02200         9.62700        18.11600
C          -3.69900        -2.76300        21.67900
H          -2.89400        -2.20500        22.14900
C          -4.28700        -3.83300        22.35200
H          -3.93700        -4.10400        23.34500
C          -5.32000        -4.55700        21.75100
H          -5.77700        -5.39300        22.27300
C          -5.75700        -4.20300        20.47500
H          -6.55800        -4.76100        19.99700
C          -5.16600        -3.13100        19.80200
H          -5.51000        -2.86600        18.80700
C          -4.13200        -2.39700        20.39700
C          -3.53700        -1.17500        19.73300
C          -4.10400         0.15800        20.25000
H          -3.51500         0.97800        19.83300
H          -3.94400         0.20200        21.33300
C          -5.59300         0.41600        19.92500
H          -5.83900        -0.03000        18.95400
H          -5.73200         1.49600        19.81200
C          -6.60200        -0.07900        20.96800
H          -6.47400        -1.14200        21.20000
H          -7.62600         0.01600        20.58100
C          -6.54400         0.70000        22.26800
O          -5.83500         1.65800        22.49400
O          -7.41200         0.19100        23.17300
C          -7.44800         0.86600        24.44000
H          -8.18700         0.33000        25.03600
H          -7.74200         1.91100        24.31200
H          -6.46700         0.83200        24.92200
C           5.72500        -0.14500        19.36800
H           5.21300         0.80300        19.23200
C           7.11200        -0.20900        19.21900
H           7.66800         0.69100        18.97000
C           7.78100        -1.42300        19.38500
H           8.85900        -1.47400        19.26600
C           7.05400        -2.57300        19.70000
H           7.56400        -3.52400        19.82600
C           5.66900        -2.50600        19.84900
H           5.10800        -3.40600        20.08700
C           4.98800        -1.29200        19.68700
C           3.49900        -1.23300        19.94400
C           3.12000        -1.15700        21.43200
H           2.03600        -1.25600        21.52100
H           3.54300        -2.04000        21.93000
C           3.55700         0.13000        22.16700
H           3.53400         0.98400        21.48100
H           2.81600         0.36100        22.94000
C           4.93200         0.04400        22.83800
H           5.72700        -0.16100        22.11300
H           4.96700        -0.78500        23.55700
C           5.29700         1.31700        23.57500
O           4.65800         2.34700        23.57400
O           6.46200         1.16600        24.24900
C           6.90800         2.32400        24.97200
H           7.84700         2.03200        25.44300
H           6.17300         2.61300        25.72900
H           7.06400         3.16700        24.29300
C          -0.46100         2.31400        16.66700
C           0.71600         2.24700        15.56600
C           1.98600         1.60500        16.02100
C           2.21900         1.22300        17.33600
C           1.14700         1.28500        18.33900
C          -0.13100         1.72000        17.99600
C          -1.27000         1.01500        18.49400
C          -2.28300         0.97300        17.42900
C          -1.74700         1.65900        16.28000
C          -1.98500         1.16100        15.00400
C          -0.90800         1.09500        13.99600
C           0.37300         1.53600        14.29700
C           1.50500         0.73600        13.90200
C           2.49200         0.78200        14.96500
C           3.27300        -0.34700        15.24900
C           3.55300        -0.70400        16.61400
C           3.04300         0.08200        17.64000
C           2.62500        -0.48000        18.95800
C           1.32400         0.19600        19.25000
C           0.20400        -0.48500        19.72300
C          -1.11400        -0.04700        19.38200
C          -2.04800        -1.21100        19.42800
C          -3.16500        -1.26000        18.26500
C          -3.11800        -0.12900        17.28500
C          -3.34100        -0.65000        15.96900
C          -2.80000        -0.01500        14.84400
C          -2.26200        -0.81000        13.75500
C          -1.09200        -0.12700        13.23800
C           0.01100        -0.87400        12.81000
C           1.34000        -0.43300        13.15400
C           2.14800        -1.60600        13.44900
C           3.08900        -1.56200        14.47700
C           3.24600        -2.68900        15.37700
C           3.53800        -2.17700        16.70100
C           3.02000        -2.81600        17.81800
C           2.60800        -2.09000        19.05700
C           1.29500        -2.70100        19.42800
C           0.18700        -1.95300        19.81000
C          -1.15000        -2.40000        19.51700
C          -1.34700        -3.55100        18.76400
C          -2.35900        -3.59500        17.69200
C          -3.14700        -2.48900        17.41400
C          -3.36400        -2.10000        16.04300
C          -2.85700        -2.86200        14.98600
C          -2.29400        -2.20300        13.82000
C          -1.14700        -2.97900        13.38000
C          -0.01400        -2.32700        12.88800
C           1.30900        -2.77900        13.27800
C           1.45000        -3.86500        14.14500
C           2.44100        -3.82300        15.21000
C           1.87600        -4.46400        16.37000
C           2.14800        -3.95000        17.64200
C           1.08900        -3.87400        18.63300
C          -0.20600        -4.30300        18.31300
C          -0.48500        -4.82500        16.98700
C           0.53200        -4.90800        16.03700
C           0.27200        -4.54100        14.65600
C          -1.00300        -4.10800        14.28100
C          -2.06500        -4.03200        15.27200
C          -1.81100        -4.38000        16.60400
