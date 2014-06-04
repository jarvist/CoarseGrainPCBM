%Mem=8Gb
%nproc=8
# b3lyp/6-31g* punch=mo iop(3/33=1) nosymm

Automagically prepared Gaussian Input: JMF 12-9-11  'DA/packmol_dimers' project

0 1
C           0.65500         4.80700         0.21800
H          -0.27200         4.43100         0.63900
C           1.45700         5.66700         0.97100
H           1.14600         5.95300         1.97200
C           2.65400         6.15300         0.44300
H           3.28000         6.81900         1.03100
C           3.04500         5.77300        -0.84200
H           3.97800         6.14200        -1.26100
C           2.24300         4.91400        -1.59300
H           2.55500         4.61700        -2.59100
C           1.03700         4.42300        -1.07300
C           0.14300         3.56600        -1.94200
C          -0.71100         4.36200        -2.94200
H          -1.24100         3.65800        -3.58800
H          -0.02600         4.91400        -3.60000
C          -1.74300         5.32800        -2.31700
H          -2.11100         4.92800        -1.36600
H          -2.62100         5.37400        -2.97000
C          -1.22800         6.75600        -2.11100
H          -0.35900         6.78400        -1.44300
H          -0.88600         7.19100        -3.05900
C          -2.28400         7.67500        -1.53000
O          -3.39100         7.34300        -1.16500
O          -1.82900         8.94800        -1.46000
C          -2.75100         9.90100        -0.90700
H          -3.66200         9.95200        -1.51100
H          -2.22800        10.85800        -0.92200
H          -3.02200         9.62700         0.11600
C          -3.69900        -2.76300         3.67900
H          -2.89400        -2.20500         4.14900
C          -4.28700        -3.83300         4.35200
H          -3.93700        -4.10400         5.34500
C          -5.32000        -4.55700         3.75100
H          -5.77700        -5.39300         4.27300
C          -5.75700        -4.20300         2.47500
H          -6.55800        -4.76100         1.99700
C          -5.16600        -3.13100         1.80200
H          -5.51000        -2.86600         0.80700
C          -4.13200        -2.39700         2.39700
C          -3.53700        -1.17500         1.73300
C          -4.10400         0.15800         2.25000
H          -3.51500         0.97800         1.83300
H          -3.94400         0.20200         3.33300
C          -5.59300         0.41600         1.92500
H          -5.83900        -0.03000         0.95400
H          -5.73200         1.49600         1.81200
C          -6.60200        -0.07900         2.96800
H          -6.47400        -1.14200         3.20000
H          -7.62600         0.01600         2.58100
C          -6.54400         0.70000         4.26800
O          -5.83500         1.65800         4.49400
O          -7.41200         0.19100         5.17300
C          -7.44800         0.86600         6.44000
H          -8.18700         0.33000         7.03600
H          -7.74200         1.91100         6.31200
H          -6.46700         0.83200         6.92200
C           5.72500        -0.14500         1.36800
H           5.21300         0.80300         1.23200
C           7.11200        -0.20900         1.21900
H           7.66800         0.69100         0.97000
C           7.78100        -1.42300         1.38500
H           8.85900        -1.47400         1.26600
C           7.05400        -2.57300         1.70000
H           7.56400        -3.52400         1.82600
C           5.66900        -2.50600         1.84900
H           5.10800        -3.40600         2.08700
C           4.98800        -1.29200         1.68700
C           3.49900        -1.23300         1.94400
C           3.12000        -1.15700         3.43200
H           2.03600        -1.25600         3.52100
H           3.54300        -2.04000         3.93000
C           3.55700         0.13000         4.16700
H           3.53400         0.98400         3.48100
H           2.81600         0.36100         4.94000
C           4.93200         0.04400         4.83800
H           5.72700        -0.16100         4.11300
H           4.96700        -0.78500         5.55700
C           5.29700         1.31700         5.57500
O           4.65800         2.34700         5.57400
O           6.46200         1.16600         6.24900
C           6.90800         2.32400         6.97200
H           7.84700         2.03200         7.44300
H           6.17300         2.61300         7.72900
H           7.06400         3.16700         6.29300
C          -0.46100         2.31400        -1.33300
C           0.71600         2.24700        -2.43400
C           1.98600         1.60500        -1.97900
C           2.21900         1.22300        -0.66400
C           1.14700         1.28500         0.33900
C          -0.13100         1.72000        -0.00400
C          -1.27000         1.01500         0.49400
C          -2.28300         0.97300        -0.57100
C          -1.74700         1.65900        -1.72000
C          -1.98500         1.16100        -2.99600
C          -0.90800         1.09500        -4.00400
C           0.37300         1.53600        -3.70300
C           1.50500         0.73600        -4.09800
C           2.49200         0.78200        -3.03500
C           3.27300        -0.34700        -2.75100
C           3.55300        -0.70400        -1.38600
C           3.04300         0.08200        -0.36000
C           2.62500        -0.48000         0.95800
C           1.32400         0.19600         1.25000
C           0.20400        -0.48500         1.72300
C          -1.11400        -0.04700         1.38200
C          -2.04800        -1.21100         1.42800
C          -3.16500        -1.26000         0.26500
C          -3.11800        -0.12900        -0.71500
C          -3.34100        -0.65000        -2.03100
C          -2.80000        -0.01500        -3.15600
C          -2.26200        -0.81000        -4.24500
C          -1.09200        -0.12700        -4.76200
C           0.01100        -0.87400        -5.19000
C           1.34000        -0.43300        -4.84600
C           2.14800        -1.60600        -4.55100
C           3.08900        -1.56200        -3.52300
C           3.24600        -2.68900        -2.62300
C           3.53800        -2.17700        -1.29900
C           3.02000        -2.81600        -0.18200
C           2.60800        -2.09000         1.05700
C           1.29500        -2.70100         1.42800
C           0.18700        -1.95300         1.81000
C          -1.15000        -2.40000         1.51700
C          -1.34700        -3.55100         0.76400
C          -2.35900        -3.59500        -0.30800
C          -3.14700        -2.48900        -0.58600
C          -3.36400        -2.10000        -1.95700
C          -2.85700        -2.86200        -3.01400
C          -2.29400        -2.20300        -4.18000
C          -1.14700        -2.97900        -4.62000
C          -0.01400        -2.32700        -5.11200
C           1.30900        -2.77900        -4.72200
C           1.45000        -3.86500        -3.85500
C           2.44100        -3.82300        -2.79000
C           1.87600        -4.46400        -1.63000
C           2.14800        -3.95000        -0.35800
C           1.08900        -3.87400         0.63300
C          -0.20600        -4.30300         0.31300
C          -0.48500        -4.82500        -1.01300
C           0.53200        -4.90800        -1.96300
C           0.27200        -4.54100        -3.34400
C          -1.00300        -4.10800        -3.71900
C          -2.06500        -4.03200        -2.72800
C          -1.81100        -4.38000        -1.39600
C           0.65500         4.80700        11.91800
H          -0.27200         4.43100        12.33900
C           1.45700         5.66700        12.67100
H           1.14600         5.95300        13.67200
C           2.65400         6.15300        12.14300
H           3.28000         6.81900        12.73100
C           3.04500         5.77300        10.85800
H           3.97800         6.14200        10.43900
C           2.24300         4.91400        10.10700
H           2.55500         4.61700         9.10900
C           1.03700         4.42300        10.62700
C           0.14300         3.56600         9.75800
C          -0.71100         4.36200         8.75800
H          -1.24100         3.65800         8.11200
H          -0.02600         4.91400         8.10000
C          -1.74300         5.32800         9.38300
H          -2.11100         4.92800        10.33400
H          -2.62100         5.37400         8.73000
C          -1.22800         6.75600         9.58900
H          -0.35900         6.78400        10.25700
H          -0.88600         7.19100         8.64100
C          -2.28400         7.67500        10.17000
O          -3.39100         7.34300        10.53500
O          -1.82900         8.94800        10.24000
C          -2.75100         9.90100        10.79300
H          -3.66200         9.95200        10.18900
H          -2.22800        10.85800        10.77800
H          -3.02200         9.62700        11.81600
C          -3.69900        -2.76300        15.37900
H          -2.89400        -2.20500        15.84900
C          -4.28700        -3.83300        16.05200
H          -3.93700        -4.10400        17.04500
C          -5.32000        -4.55700        15.45100
H          -5.77700        -5.39300        15.97300
C          -5.75700        -4.20300        14.17500
H          -6.55800        -4.76100        13.69700
C          -5.16600        -3.13100        13.50200
H          -5.51000        -2.86600        12.50700
C          -4.13200        -2.39700        14.09700
C          -3.53700        -1.17500        13.43300
C          -4.10400         0.15800        13.95000
H          -3.51500         0.97800        13.53300
H          -3.94400         0.20200        15.03300
C          -5.59300         0.41600        13.62500
H          -5.83900        -0.03000        12.65400
H          -5.73200         1.49600        13.51200
C          -6.60200        -0.07900        14.66800
H          -6.47400        -1.14200        14.90000
H          -7.62600         0.01600        14.28100
C          -6.54400         0.70000        15.96800
O          -5.83500         1.65800        16.19400
O          -7.41200         0.19100        16.87300
C          -7.44800         0.86600        18.14000
H          -8.18700         0.33000        18.73600
H          -7.74200         1.91100        18.01200
H          -6.46700         0.83200        18.62200
C           5.72500        -0.14500        13.06800
H           5.21300         0.80300        12.93200
C           7.11200        -0.20900        12.91900
H           7.66800         0.69100        12.67000
C           7.78100        -1.42300        13.08500
H           8.85900        -1.47400        12.96600
C           7.05400        -2.57300        13.40000
H           7.56400        -3.52400        13.52600
C           5.66900        -2.50600        13.54900
H           5.10800        -3.40600        13.78700
C           4.98800        -1.29200        13.38700
C           3.49900        -1.23300        13.64400
C           3.12000        -1.15700        15.13200
H           2.03600        -1.25600        15.22100
H           3.54300        -2.04000        15.63000
C           3.55700         0.13000        15.86700
H           3.53400         0.98400        15.18100
H           2.81600         0.36100        16.64000
C           4.93200         0.04400        16.53800
H           5.72700        -0.16100        15.81300
H           4.96700        -0.78500        17.25700
C           5.29700         1.31700        17.27500
O           4.65800         2.34700        17.27400
O           6.46200         1.16600        17.94900
C           6.90800         2.32400        18.67200
H           7.84700         2.03200        19.14300
H           6.17300         2.61300        19.42900
H           7.06400         3.16700        17.99300
C          -0.46100         2.31400        10.36700
C           0.71600         2.24700         9.26600
C           1.98600         1.60500         9.72100
C           2.21900         1.22300        11.03600
C           1.14700         1.28500        12.03900
C          -0.13100         1.72000        11.69600
C          -1.27000         1.01500        12.19400
C          -2.28300         0.97300        11.12900
C          -1.74700         1.65900         9.98000
C          -1.98500         1.16100         8.70400
C          -0.90800         1.09500         7.69600
C           0.37300         1.53600         7.99700
C           1.50500         0.73600         7.60200
C           2.49200         0.78200         8.66500
C           3.27300        -0.34700         8.94900
C           3.55300        -0.70400        10.31400
C           3.04300         0.08200        11.34000
C           2.62500        -0.48000        12.65800
C           1.32400         0.19600        12.95000
C           0.20400        -0.48500        13.42300
C          -1.11400        -0.04700        13.08200
C          -2.04800        -1.21100        13.12800
C          -3.16500        -1.26000        11.96500
C          -3.11800        -0.12900        10.98500
C          -3.34100        -0.65000         9.66900
C          -2.80000        -0.01500         8.54400
C          -2.26200        -0.81000         7.45500
C          -1.09200        -0.12700         6.93800
C           0.01100        -0.87400         6.51000
C           1.34000        -0.43300         6.85400
C           2.14800        -1.60600         7.14900
C           3.08900        -1.56200         8.17700
C           3.24600        -2.68900         9.07700
C           3.53800        -2.17700        10.40100
C           3.02000        -2.81600        11.51800
C           2.60800        -2.09000        12.75700
C           1.29500        -2.70100        13.12800
C           0.18700        -1.95300        13.51000
C          -1.15000        -2.40000        13.21700
C          -1.34700        -3.55100        12.46400
C          -2.35900        -3.59500        11.39200
C          -3.14700        -2.48900        11.11400
C          -3.36400        -2.10000         9.74300
C          -2.85700        -2.86200         8.68600
C          -2.29400        -2.20300         7.52000
C          -1.14700        -2.97900         7.08000
C          -0.01400        -2.32700         6.58800
C           1.30900        -2.77900         6.97800
C           1.45000        -3.86500         7.84500
C           2.44100        -3.82300         8.91000
C           1.87600        -4.46400        10.07000
C           2.14800        -3.95000        11.34200
C           1.08900        -3.87400        12.33300
C          -0.20600        -4.30300        12.01300
C          -0.48500        -4.82500        10.68700
C           0.53200        -4.90800         9.73700
C           0.27200        -4.54100         8.35600
C          -1.00300        -4.10800         7.98100
C          -2.06500        -4.03200         8.97200
C          -1.81100        -4.38000        10.30400
