#NOTE: This is the script for the TAS1R1 PAML sequence run for the alternative model. 
# When this script was run, both the tree, alightnment and codeml file where placed 
# within the working directory (bin directory in command line PAML program) where the 
# codeml file contained the settings for the alternative branch-site model. This .R
# file iteratively changes the foreground branch for each run so all species have 
# undergo the alternative model 

# RUN PAML THROUGH THIS SCRIPT 
setwd("path/to/working/directory") # Set working directory
ctl_file <- "codeml.ctl" # Define path to codeml.ctl file
cmd <- paste0("codeml ", ctl_file) # Define command to run codeml.ctl

# ITERATIVELY CHANGE THE SPECIES OF INTEREST 
tree_file <- read.table("~/TAS1R1_revised_tree_following_error_message.txt")



system(cmd) # Execute command using system()




