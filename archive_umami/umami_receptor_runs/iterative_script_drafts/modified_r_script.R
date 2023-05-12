# RUN PAML THROUGH THIS SCRIPT 
setwd("~/Documents/paml-4.10.6/bin/") # Set working directory
ctl_file <- "~/Documents/paml-4.10.6/bin/" # Define path to codeml.ctl file
cmd <- paste0("codeml ", ctl_file) # Define command to run codeml.ctl

# LOAD TREE FILE
tree_file <- "TAS1R1_revised_tree_following_error_message.txt"
tree <- readLines(tree_file)
original_file <- "TAS1R1_revised_tree_following_error_message_constant.txt"
original_tree <- readLines(original_file)

patterns <- c(")")
replacements <- c(")", ")#1")

for (i in 1:length(patterns)) {
  # tree <- original_tree # Make a copy of the original tree
  tree <- gsub(patterns[i], replacements[i], tree_file) # Perform the substitution
  writeLines(tree, "TAS1R1_revised_tree_following_error_message.txt") # Write the modified tree to a new file
  system("./codeml") # Run the program with the modified tree
  dir_prefix <- paste0("TAS1R1_Alt_", i, "/") # Create a directory for the current pattern if it doesn't already exist
  if (!dir.exists(dir_prefix)) {
    dir.create(dir_prefix)
  }
  files_to_copy <- c("2NG.dN", "2NG.dS", "2NG.t", "4fold.nuc", "Inf", "rst", "rst1", "rub", "test_output", "TAS1R1_revised_tree_following_error_message.txt")
  for (j in 1:length(files_to_copy)) {
    file.copy(files_to_copy[j], paste0(dir_prefix, files_to_copy[j]))
  }
  tree <- original_tree # Revert the tree to its original state
}
