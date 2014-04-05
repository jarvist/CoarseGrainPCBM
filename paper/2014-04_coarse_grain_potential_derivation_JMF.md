(( Written upon finding the code again on a backup drive :) ))

"Reduction of the set was made with a simple canonical representation (TODO: angles in table for the Supp Info?)."

C60 has 90 bonds between the 60 atoms. 30 of these are 6,6 coordinating (1.37
A long - along two hexagonal facets) and have more double-bond like character.
The remaining 60 bonds are 5,6 coordinating (1.448 A long). PCBM is formed by
4+2 cycloaddition.  
These sidechains are believed (ref - that synth paper) to
wholly coordinate with the 6,6 bonds.

The 8 unique bis isomers, and 45 tris isomers, have been identified and their
point group derived in previous work (ref, Hirsch?).
However we did not find a computationally readable list of structures which
would be directly useful in constructing our coarse grained model. 

The bis isomers can be enumerated (identified) by hand and are defined in our
coarse grain model simply as the internal angle between the two sidechains.

Identifying unique tris isomers is much more difficult, so we developed
a computational method to directly enumerate the isomers and calculate the
coarse-grain specification of angles between the three sidechains.

First we read in the coorinates of a C60 molecule with (0,0,0) defined as the
centre of the fullerene. We then identify the 6,6 bonds by spacing (<1.4A)
between atoms. 
The midpoint of these bonds, and thus the attachment point of the sidechains,
was found by averaging the cartessian positions of the two bonded atoms.

We can then enumerate over all possible permutations of these bonds (60 options
permutated into 3 selections, XX,XXXX options, which can be immediately
simplified by inspection to taking 2 selections of 59 if we choose the first
location for the first sidechain). 
Three inter-sidechain angles are then generated (arcos of the dot production)
from these sets of 3 coordinates (a,b;a,c;b,c). 

As the order in which we specify the inter-sidechain angles does not matter, we
are free to rearrange. 
By reordering these angles in ascending order, we can identify degenerate
configurations by direct comparison.

The newly calculated set of three angles is compared against a list of uniquely
defined isomers, and either appended to this list if found to be unique, or
discarded and the degeneracy counter of that (already identified) isomer incremented.

With a simple bit of trigonometry and enumeration we directly discover the 45
unique tris isomers and their symmetry derived degeneracy, and can directly
generate the angle specification suitable for an empirical force field
specificaiton, and a relaxed set of coarse grain coordinates for visualisation
and the generation of a dense initial structure for molecular dynamics.

