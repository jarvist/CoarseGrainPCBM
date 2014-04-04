#See http://en.wikipedia.org/wiki/Truncated_icosahedron

phi = (1+5**0.5)/2 #golden mean

for x in 0,1,-1,+3*phi,-3*phi:
    for y in 2,-2,1+2*phi,-1-2*phi,phi,-phi:
        for z in 1,-1,2+phi,-2-phi,2*phi,-2*phi:
            print x,y,z
