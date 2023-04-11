library(tidyverse)
library(BiocManager)
library(ggtree)
# BiocManager::install("ggtree")

tas1r3 <- read.tree("umami_receptor_runs/TAS1R3_analysis/c_PAML_input/TAS1R3_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R3_analysis/c_PAML_input/TAS1R3_revised_tree_following_error_message.txt
tas1r1 <- read.tree("umami_receptor_runs/TAS1R1_analysis/c_PAML_input/TAS1R1_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R1_analysis/c_PAML_input/TAS1R1_revised_tree_following_error_message.txt

# TAS1R3 Tree
TAS1R3_tree <- ggtree(tas1r3) + geom_tiplab(as_ylab=TRUE, color='firebrick')


# TAS1R1 Tree
TAS1R3_tree <- ggtree(tas1r1) + geom_tiplab(as_ylab=TRUE, color='firebrick')

