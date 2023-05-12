# PHYLOGENETIC TREE
On February 10th, the aligned DNA sequences for both TAS1R1 and TAS1R3 were combined into one file. They were saved into a Fasta file format and titled "Human_TAS1R13_orthologues_DNA_aligned_concatenated_fasta". 

Once combined into one file, this file was converted to Fasta file format and input 
into PAUP (Version 4.0a (build 169)). 

Likelihood analysis then Bootstrap/Jackknife Analysis were selected. The following settings were chosen:
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


