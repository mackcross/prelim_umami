rm(list=ls())

library(tidyverse)
library(BiocManager)
library(ggtree)
# BiocManager::install("ggtree")

tas1r1 <- read.tree("~/Documents/research/umami_receptor/umami_receptor_runs/TAS1R1_analysis/c_PAML/f1x4/one_ratio_model/TAS1R1_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R1_analysis/c_PAML_input/TAS1R1_revised_tree_following_error_message.txt

tas1r3 <- read.tree("~/Documents/research/umami_receptor/umami_receptor_runs/TAS1R3_analysis/c_PAML/f1x4/one_ratio_model/TAS1R3_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R3_analysis/c_PAML_input/TAS1R3_revised_tree_following_error_message.txt



# TAS1R1 Tree
TAS1R1_tree <- ggtree(tas1r1) + 
  geom_tiplab(as_ylab=TRUE, color='firebrick') +
  geom_text(aes(label=node))
plot(TAS1R1_tree)



TAS1R3_tree <- ggtree(tas1r3) +
  ggtitle("TAS1R3 Gene Tree", subtitle = "There is support for selection in the Homo-Pan clade.") + 
  geom_cladelabel(node=26, 
                  label="Old World Monkeys", 
                  color="blue", 
                  offset=.8, 
                  align=TRUE) +
  geom_cladelabel(node=33, 
                  label="Apes", 
                  color="blue", 
                  offset=.8, 
                  align=TRUE) +
  geom_cladelabel(node=37, 
                  label="New World Monkeys", 
                  color="blue", 
                  offset=.8, 
                  align=TRUE) +
  geom_cladelabel(node=22, 
                  label="Lemurs", 
                  color="blue", 
                  offset=.8, 
                  align=TRUE) +
  geom_cladelabel(node=1, 
                  label="Lorises", 
                  color="blue", 
                  offset=.8, 
                  align=TRUE) +
  geom_hilight(node = 35, 
               fill="blue") +
  geom_text(data=data.frame(x=c(8.5,10,10,10,10), 
                            y=c(0.2,0.4,0.6,0.8,1), 
                            label=c("Homo sapiens", "Pan troglodytes", "Pongo pygmaeus", "Gorilla gorilla", "Hylobates lar")), 
            aes(x=x, y=y, label=label), 
            size=3)
plot(TAS1R3_tree)



