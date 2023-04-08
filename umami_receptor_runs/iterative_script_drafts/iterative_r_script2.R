# NOTE: This is the script for the TAS1R1 PAML sequence run for the alternative 
# model. When this script was run, both the tree, alignment and codeml file 
# were placed within the working directory (bin directory in command line PAML 
# program) where the codeml file contained the settings for the alternative 
# branch-site model. This .R file iteratively changes the foreground branch for 
# each run so all species have undergo the alternative model 

# RUN PAML THROUGH THIS SCRIPT 
setwd("~/Documents/paml-4.10.6/bin/") # Set working directory
ctl_file <- "~/Documents/paml-4.10.6/bin/" # Define path to codeml.ctl file
cmd <- paste0("codeml ", ctl_file) # Define command to run codeml.ctl

# LOAD TREE FILE
tree_file <- "TAS1R1_revised_tree_following_error_message_constant.txt"
tree <- readLines(tree_file)

# ITERATIVELY CHANGE THE FOREGROUND SPECIES 
patterns <- c(")") # Define a list of patterns to replace
replacements <- c(")#1") # Define a list of replacement strings
for (i in 1:length(patterns)) {
  tree <- gsub(patterns[i], replacements[i], tree)
  writeLines(tree, "TAS1R1_revised_tree_following_error_message.txt") # Write the modified text to a new file
  file.rename("TAS1R1_revised_tree_following_error_message.txt", "TAS1R1_revised_tree_following_error_message.txt") # Replace the original file with the modified one
  system("./codeml") # Execute command using system()
  dir_prefix <- "TAS1R1_Alt_" # Define the directory name prefix
  files_to_copy <- c("2NG.dN", "2NG.dS", "2NG.t", "4fold.nuc", "Inf", "rst", 
                     "rst1", "rub", "test_output", 
                     "TAS1R1_revised_tree_following_error_message.txt")
  new_dir <- "~/Documents/paml-4.10.6/bin/"
  for (j in 1:length(patterns)) { # Create a directory for each pattern
    dir.create(paste0(dir_prefix, j))
    for (k in 1:length(files_to_copy)) {
      file.copy(files_to_copy[k], paste0(new_dir, "/", files_to_copy[k]))
    }
  }
  tree <- "TAS1R1_revised_tree_following_error_message_constant.txt"
}



# newtree <- gsub(")", ")#1", tree, fixed = TRUE)


