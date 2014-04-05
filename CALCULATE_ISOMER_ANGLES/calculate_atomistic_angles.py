import sys, itertools, collections
import numpy as np

#atoms=np.array()
atoms=np.loadtxt(sys.argv[1]) #a .xyz stripped down to comments + X,Y,Z tuples

#for line in fileinput.input(sys.argv[1]): #Not used anymore as the was easier to preprocess the C60 file
#   if (line[0]=='C'): #ignore everyline not with carbon as a first line
#        coords=line.split()  #[line[1],line[2],line[3]] #XYZ file
#        atoms.append(coords[1:4])

#print atoms
#print atoms[0][1],atoms[0][2],atoms[0][3]

#These are identified by hand
bisadducts= [ #[0,1] , #Uncomment this to trick the bis code into generating a mono, for display purposes. Nasty hack! (*_*) 
        [12,36],[20,44],[28,52],# '''C-isomers, from Schlegel diagram'''
        [6,7],[10,11], #E-isomers
        [2,3],[18,42], #T1 and T2
        [33,57],[23,47] #T3,T4
]

print "BIS ANGLES"
isocount=1

a = (atoms[0] + atoms[1])/2. #always 1st adduct on 0,1
for bisb in bisadducts:
        b = (atoms[bisb[0]] + atoms[bisb[1]])/2. 
        #OK, coorda and coordb are the coords (from centre) of average locations of sidechains
        c=np.dot(a,b)/np.linalg.norm(a)/np.linalg.norm(b)
        #print a,b,c
        print 180./np.pi*np.arccos(c),
        
        f = open('bis_%d.xyz'%isocount, 'w')
        print >>f, 'I 0. 0. 0.' #iodine as centre of bucky
        print >>f, 'A %f %f %f'%tuple(a) 
        print >>f, 'B %f %f %f'%tuple(b) 
        f.close()
        isocount=isocount+1

## Uphill battle to Tris isomers...
#First, let's generalise

def midpoint(atom):
    return((atoms[atom[0]]+atoms[atom[1]])/2.)

def theta(a,b):
    c=np.arccos(np.dot(a,b)/np.linalg.norm(a)/np.linalg.norm(b))
#    return (180./np.pi*np.arccos(c))
    
    if np.isnan(c):
        return 180. #np.pi #opposite direction vectors ?
    return (round(180./np.pi*c,4)) #round the values so that items are unique...

print
print "OK, want to identify all 6,6 bonds..."
#our 6-6 bonds (long) are 1.37 A
#the 5,6 bonds (short) are 1.448 A
sixsix=[]
for a in range(60): #should do len.atoms or something here, to generalise (hardcoded to C60 presently)
    for b in range(a):
        if (np.linalg.norm(atoms[a]-atoms[b])<1.4):
            sixsix.append([a,b])

print "Found: ",len(sixsix), sixsix

angles=set()
counter=collections.Counter()

isocount=1

# Nb: This code could be trivially adapted to bis (sidechains =2)
# It should also work for higher adducts (Tetrakis & above)
#  and should be generalisable to N_sidechains as a function
    #  ( it would be interesting to see how number of sidechains & degeneracies changes as a fn of sidechains! 1-30)
for iso in itertools.permutations(sixsix,3): #ignore first item in sixsix - this is our 0,1 coordinate of first sidechain
    a,b,c=midpoint(iso[0]), midpoint(iso[1]), midpoint(iso[2])
    #print a,b,c
    #print iso[0], iso[1], iso[2], 
#    print theta(a,b), theta(a,c), theta(b,c)
    isomer=tuple(sorted([theta(a,b), theta(a,c), theta(b,c)]) )#Are you hashable?
    if isomer not in angles:
        print "NEW ONE!"
        f = open('tris_%d.xyz'%isocount, 'w')
        print >>f, 'I 0. 0. 0.' #iodine as centre of bucky
        print >>f, 'A %f %f %f'%tuple(a) 
        print >>f, 'B %f %f %f'%tuple(b) 
        print >>f, 'C %f %f %f'%tuple(c) 
        f.close()
        isocount=isocount+1
    
    angles.add( isomer ) # angles is a set .'. duplicates automatically ignored 
    counter[isomer]+=1 # count degeneracy

print "Unsorted set of unique Tris...", set(angles)
print "Count of unique isomers: ", len(angles)

print "Spec of isomers, and degeneracy..."
for a in counter:
    print a, counter[a]/120 #a terrible hack, but I know the GCD is 120 

print "Raw angle values for empirical forcefield..."
for isomer in sorted(angles):
    print
    for angle in isomer:
        print angle,

