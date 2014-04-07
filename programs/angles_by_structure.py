#See http://en.wikipedia.org/wiki/Truncated_icosahedron

phi = (1+5**0.5)/2 #golden mean

generator= [ [0,1,+3*phi],
        [2,1+2*phi,phi],
        [1,2+phi,2*phi]]

#From http://blog.adambachman.org/2008/10/simple-permutations-in-python-and-ruby.html

def permutations(li):
    """ Return all permutations of a given list.  This function
    assumes every element of the list is unique. """
    if len(li) <= 1: #changing this from 1 --> 2 gives only even (odd?!) permutations of list - JMF
        yield li
    else:
        for el in li:
            for p in permutations([e for e in li if not e == el]):
                yield [el] + p

for (a,atom) in zip(generator,'CSP'):
    print a
    for (p,b) in zip(permutations(a),'01100'): #1st, 4th, 5th permutations are even
        print p
        if (b=='0'):
            for a0 in [1,-1]:
                for a1 in [1,-1]:
                    for a2 in [1,-1]:
                        print atom,a0*p[0],a1*p[1],a2*p[2]

#Visualise result with Pymol & something like:
#alter all, vdw=0.6
#show spheres
#show sticks