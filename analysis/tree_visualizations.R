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
  ggtitle("TAS1R1 Gene Tree", subtitle = "There is not support for selection in Homo nor for both Homo and Pan.") + 
  geom_cladelabel(node=29, 
                  label="OWM", 
                  color="black", 
                  offset=.05, 
                  angle = 70,
                  align=TRUE) +
  geom_cladelabel(node=36, 
                  label="Apes", 
                  color="black", 
                  offset=.05, 
                  angle = 70,
                  align=TRUE) +
  geom_cladelabel(node=26, 
                  label="NWM", 
                  color="black", 
                  offset=.05, 
                  angle = 70,
                  align=TRUE) +
  geom_cladelabel(node=1, 
                  label="Prosimian", 
                  color="black", 
                  offset=.05, 
                  angle = 70,
                  align=TRUE) +
  geom_cladelabel(node=41, 
                  label="", 
                  color="black", 
                  offset=.05, 
                  angle = 70,
                  align=TRUE) +
  geom_hilight(node = 40, 
               fill="red") +
  geom_hilight(node = 16, 
               fill="red") +
  geom_text(data=data.frame(x=c(7.7,7.7,7.6,7.7,7.5,7.7), 
                            y=c(12.3,13.4,14.4,11.3,10.3,9.3), 
                            label=c("Gorilla", "Chimp", "Bonobo", "Human", "Orangutan", "Gibbon")), 
            aes(x=x, y=y, label=label), 
            size=2.8)
TAS1R1_tree



TAS1R3_tree <- ggtree(tas1r3) +
  ggtitle("TAS1R3 Gene Tree", subtitle = "There is support for selection in the Homo-Pan clade but not in Homo only.") + 
  geom_cladelabel(node=26, 
                  label="OWM", 
                  color="#006d2c", 
                  offset=.05, 
                  angle = 60,
                  align=TRUE) +
  geom_cladelabel(node=33, 
                  label="Apes", 
                  color="#006d2c", 
                  offset=.05, 
                  angle = 60,
                  align=TRUE) +
  geom_cladelabel(node=37, 
                  label="NWM", 
                  color="#006d2c", 
                  offset=.05, 
                  angle = 60,
                  align=TRUE) +
  geom_cladelabel(node=22, 
                  label="", 
                  color="#006d2c", 
                  offset=.05, 
                  angle = 90,
                  align=TRUE) +
  geom_cladelabel(node=1, 
                  label="STRP", 
                  color="#006d2c", 
                  offset=.05,
                  angle = 60,
                  align=TRUE) +
  geom_hilight(node = 35, 
               fill="#238b45") +
  geom_text(data=data.frame(x=c(7.6,7.6,7.6,7.7,7.5), 
                            y=c(10.3,11.3,12.3,9.3,8.3), 
                            label=c("Human", "Chimp", "Bonobo", "Gorilla", "Orangutan")), 
            aes(x=x, y=y, label=label), 
            size=2.8)
plot(TAS1R3_tree)



