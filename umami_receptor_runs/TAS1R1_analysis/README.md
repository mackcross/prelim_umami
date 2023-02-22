# SEQUENCE RETRIEVAL 
Sequence data for the TAS1R1 gene (ENSG00000173662) was gathered from 
ensembl.org on February 8th, 2023. Ensembl identified 22 species of primates 
with orthologous sequences. The aligned amino acid sequence data and the DNA 
data of all 22 orthologous sequences was downloaded from this website in FASTA 
format. If a sequence had multiple transcript variants, the longest one was 
selected. 

This sequence data was moved to the file path: 
Documents/research_projects/umami_receptor/umami_receptor_runs/analysis_TAS1R1
/a_alignments. 

This data was opened in a text editor. It was noted that each of the downloaded 
sequences were labeled with the first letter of the genus and the first three 
letters of the species. These labels also contained the ID of the transcript 
variant downloaded for each species.

# SEQUENCE ALIGNMENT 
Both the amino acid sequence and the DNA sequence were imported seperately 
into Seqotron. It was noted that Otolmeur garnettii had a codon "AGC" prior to 
the start codon. This was deleted. The sequences were re-aligned using Muscle. 
Following alignment, the Nomascus leucogenys DNA sequence gaps were adjusted 
using the amino acid sequence as a reference. No other species sequences were 
altered. They were saved in the the same file as the original downloads. 

# BLASTP 
On February 9th 2023, the human amino acid transcript was ran in Blastp, found
at this website: 
https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=blastp&PAGE_TYPE=BlastSearch
&LINK_LOC=blasthome
This was done to evaluate the possibility of gene duplication events which may
impact this analysis. The species which returned multiple sequences included:
Homo sapiens (7 matches), Pan troglodytes (3 matches), Pongo abelii (2 
matches), Nomascus leucogenys (2 matches), Trachypithecus francoisi (2 
matches), Rhinopithecus roxellana (2 matches), Chlorocebus sabaeus (2 
matches), Cercocebus atys (2 matches), Macaca fascicularis (2 matches), 
Macaca mulatta (2 matches), Macaca nemestrina (3 matches), and  Callithrix
jacchus (2 matches). There were 77 total primate sequences, including the 
duplicates above. Not all of these species were examined within this analysis.
Only the species available on ensemble.org were considered.  

# PHYLOGENETIC TREE
The DNA sequence alignments were converted to .nexus file format and input 
into PAUP (Version 4.0a (build 169)) on February 9, 2023. 

The file alignment file was input and the names were adjusted to fit formatting
requirements. Likelihood analysis then Bootstrap/Jackknife Analysis were 
selected. The following settings were chosen:
Resampling method: Bootstrap
Number of replicates: 500
Type of search: "Fast" stepwise-addition 
Census tree options: Retain groups with frequency >: 50%
The "Show table of partition frequencies" option was selected
Don't show groups with bootstrap proportions <: 5%

The settings on Likelihood analysis were left to default. These settings were
as follows: 
Nucleotide models: 
	Selected "Ti rate =/ Tv rate ("2 ST")"
		Set to: 2
	Selected "Use empirical frequencies"
		Selected "Hasegawa-Kishino-Yano (1985)"
Proportion of invariable sites: 
	Selected "Set to: 0"
Variable sites: 
	Selected "Equal rates for all sites" 
Starting branch lengths for non-clock models: 
	Selected "Rogers-Swofford method"
Approximation limit for searches: 
	Selected "Reject trees if approximate Likelihood exceeds target by more 
	than 5%"
		Selected "Dynamically readjust this limit if necessary." 
Starting values for other parameters:
	Selected "obtain using parsimony-based approximations" 
Branch-length optimization
	Selected "Iterative on-dimensional:"
	Selected "Newton's method"
		Maximum number of smoothing passes = "20"
		Single-precision tolerance factor for score comparisons = "1e-07"
		Double-precision tolerance factor for score comparisons = "1e-10"
Multidimensional parameter optimizer: 
	Selected "L-BFGS"
Numerical Precision: 
	Selected "Single"
	Selected "Use SIMD vectorization (SSE)
Selected "Collapse branches of effectively zero length when searching"
Estimation of ancestral states: 
	Selected "Marginal" 

# PAML ANALYSIS 
