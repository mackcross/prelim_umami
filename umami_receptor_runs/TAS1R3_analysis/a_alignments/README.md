# SEQUENCE RETRIEVAL 
Sequence data for the TAS1R3 gene (ENSG00000169962) was gathered from 
ensembl.org on February 8th, 2023. Ensembl identified 19 species of primates 
with orthologous sequences. The aligned amino acid sequence data and the DNA 
data of all 22 orthologous sequences was downloaded from this website in FASTA 
format. If a sequence had multiple transcript varients, the longest one was 
selected. However, one species (Macaque mulatta) had a signficantly longer 
varient, but it appeared to be partially projected. In this case, the shorter
varient, which was noted to be ensembl canonical was chosen instead.  

This sequence data was moved to the file path: 
Documents/research_projects/umami_receptor/umami_receptor_runs/analysis_TAS1R3
/a_alignments. 

This data was opened in a text editor. It was noted that each of the downloaded 
sequences were labeled with the first letter of the genus and the first three 
letters of the species. These labels also contained the ID of the transcript 
varient downloaded for each species.

# SEQUENCE ALIGNMENT
Both the amino acid sequence and the DNA sequence were imported seperately 
into Seqotron. They were re-aligned using Muscle. Following alignment, the DNA
sequence gaps were adjusted using the amino acid sequence as a reference. They 
were saved in the the same file as the original downloaded data. 

# BLASTP 
On February 9th 2023, the human amino acid transcript was ran in Blastp, found
at this website: 
https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=blastp&PAGE_TYPE=BlastSearch
&LINK_LOC=blasthome
This was done to evaluate the possibility of gene duplication events which may
impact this analysis. The species which returned multiple sequences included:
Callithrix jacchus (3 matches), Cebus imitator (2 matches), Chlorocebus 
sabaeus (2 matches), Gorilla gorilla (2 matches), Homo sapiens (5 matches), 
lemur catta (2 matches), Macaca fascicularis (2 matches), Macaca mulatta (2 
matches), Macaca nemestrina (3 matches), Nomascus leucogenys (5 matches), 
Papio hamadryas (3 matches), Pilocolobus tephrosceles (2 matches), Pongo abelii
(2 matches), Rhinopithecus bieti (2 matches), Rhinopithecus roxellana (3 
matches), Saimiri boliviensis boliviensis (2 matches), and Trachypithecus
francoisi (2 matches). There were 90 total primate sequences, including the 
duplicates above. Not all of these species were examined within this analysis.
Only the species available on ensemble.org were considered. 