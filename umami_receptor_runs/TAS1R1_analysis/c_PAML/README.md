# PAML INPUT
This file contains all the data used for PAML input and describes any changes made to it to accommodate PAML input parameters. There were two different frequency models used, f1x4 and fmutself, and each of the directories labeled as such contains output generated from that frequency model. The directory previous_runs contains PAML analyses that were attempted but not included in subsequent analyses. 

# SEQUENCE ALIGNMENT ADJUSTMENTS 
The TAS1R1 sequence alignment was opened in Seqotron and exported in Philip format then saved as a .txt file into this directory. Upon the export, it was opened into a text editor. The formatting was adjusted using the mtCDNAape text file as a guide for formatting. The species names were changed for ease of reading. 

# PHYLOGENETIC TREE ADJUSTMENTS 
The maximum likelihood tree generated from the rerun directory was used for this analysis. A copy was placed in this directory for PAML input. The species names were adjusted to match the sequence alignment. 

ERROR: Despite adjusting the format, the following error occurred: Bad option '1' in first line of seqfile. This was adjusted by switching the default txt option to Windows (CRLF) in the alignment text file. 

ERROR: The first run returned an error which stated "Error: end of tree file...". To fix this error, I created a new tree file and adjusted the format so it followed the formatting of the mtCDNAape tree as discussed above. 

