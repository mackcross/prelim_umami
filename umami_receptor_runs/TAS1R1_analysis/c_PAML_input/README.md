# INTRODUCTION 
This directory contains the files necessary for PAML input for the TAS1R1 gene. 

# METHODS
The TAS1R1 sequence alignment was opened in Seqotron and exported in Philip format then saved as a .txt file into this directory. Upon the export, it was opened into a text editor. The formatting was adjusted using the mtCDNAape text file as a guide for formatting. The species names were adjusted for ease of reading. 

The maximum likelihood tree generated from the rerun directory was used for this analysis. A copy was placed in this directory for PAML input. The species names were adjusted to match the sequence alignment. 

ERROR: Despite adjusting the format, the following error occurred: Bad option '1' in first line of seqfile. This was adjusted by switching the default txt option to Windows (CRLF) in the alignment text file. 