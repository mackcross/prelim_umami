# Introduction
I enrolled in this course with the goal of building better programming 
skills and to use the final project to further my own research. I am in 
the process of learning PAML to look at selection in primates. Previously, 
I used MEGA to look at selection in Umami taste receptor genes in primates 
(see below for more detail), however, PAML is typically the program of 
choice for these type of analyses for publication purposes. As a result, I 
intend to redo these analyses in PAML for this project. Additionally, I 
did not have any R experience prior to this semester, however, I am taking 
an R class concurrently with this course. As a result, I am planning on 
producing a figure from my research in R to push myself in skillbuilding.

# Project Design
During hominin evolution, it is thought that the introduction of meat into 
the hominin diet provided a new, calorically rich food source that 
resulted in a higher daily caloric intake. This increased caloric 
availability may have facilitated hominin brain evolution, as human brains 
have intense energetic demands (~20-25% of resting metabolic rate) 
compared to the average primate (~9%) and the average mammal (~3-5%) 
(Leonard, 2007). Additionally, evidence suggests that a dietary transition 
towards meat eating preceded hominin brain expansion (Ferraro, 2013). To 
further evaluate the role of meat in hominin evolution, this project 
considers the taste receptors responsible for the transduction of the 
savory “umami” flavor which is associated with human’s perception of meat. 
Two genes, TAS1R1 and TAS1R3, encode the taste receptors responsible for 
umami flavor. If a dietary transition towards meat eating was a critical 
shift in hominin evolution, this may have resulted in positive selection 
on the TAS1R1 and TAS1R3 genes in the hominin lineage. The following 
hypotheses guide this research:
H1: The ratio of non-synonymous to synonymous mutations (dN/dS) is greater 
than 1 in the hominin lineage for TAS1R1 and/or TAS1R3. H2: In primates 
whose diets de-emphasize protein sources, the ratio of non-synonymous to 
synonymous mutations (dN/dS) does not significantly deviate from 1 for 
TAS1R1 and TAS1R3.

# Methods
Using Ensembl, I will collect the sequences for the TAS1R1 and TAS1R3 gene 
sequences from 22 primate species including humans. These primate 
sequences span across the primate lineage including all members of 
hominoidea (apes) and representatives of cercopithecoidea (Old World 
Monkeys), platyrrhinni (New World Monkeys), tarsiformes (tarsiers), 
Strepshirrines (lemurs and loirses). Upon retreival of these codon 
sequences, they will be evaluated for quality and alligned. A maxiumum 
likelihood tree will be built (potentially through PAUP, although another 
program may be used instead). The tree and alignments will be analyzed in 
PAML. I will follow the procedures recommended within the cited article 
for PAML input (Bielawski, 2016). Ideally, I will be able to able to 
create an R script to help with the iterative nature of these analyses. 
Following these analyses, I will use R to contruct a primate phylogeny 
which will document type of selection (negative, neutral or positive) on 
each primate branch. As this has not been compeleted, I have shown an 
example of a similar phylogeny which was a reconstruction of primate diel 
pattern, as shown below. 

# Conclusion
Although I recognize this is an ambitious project, I am eager to push 
forward in my reserach and think this class provides an excellent 
opportunity for personal growth in both my computation skills as well as 
progress in my reserach agenda. This is a topic I have experience with 
and, while I am in the process of learning the particularities of PAML, I 
believe I have found the necessary resources to aid in my successful 
completion of this reserach proposal.

# Important References
Bielawski, Joseph P., Jennifer L. Baker, and Joseph Mingrone. “Inference 
of episodic changes in natural selection acting on protein coding 
sequences via CODEML.” Current protocols in bioinformatics. June 20, 2016, 
54. DOI: https://doi.org/10.1002/cpbi.2.

Ferraro, Joseph V., Thomas W. Plummer, Briana L. Pobiner, James S. Oliver, 
Laura C. Bishop, David R. Braun, Peter W. Ditchfield et al. “Earliest 
archaeological evidence of persistent hominin carnivory.” PloS one 8, 
April 25, 2013, 4. DOI:10.1371/journal.pone.0062174.

Leonard, William. R., Josh J. Snodgrass, and Marcia L. Robertson. “Effects 
of brain evolution on human nutrition and metabolism.” Annu. Rev. Nutr, 
August 21, 2007, 27. DOI: 10.1146/an- nurev.nutr.27.061406.093659.
