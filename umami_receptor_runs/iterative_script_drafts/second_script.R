# NOTE: This is the script for the TAS1R1 PAML sequence run for the alternative 
# model. When this script was run, both the tree, alignment and codeml file 
# were placed within the working directory (bin directory in command line PAML 
# program) where the codeml file contained the settings for the alternative 
# branch-site model. This .R file iteratively changes the foreground branch for 
# each run so all species have undergo the alternative model 

# RUN PAML THROUGH THIS SCRIPT 
setwd("~/Documents/research_projects/paml-4.10.6/bin/") # Set working directory
ctl_file <- "~/Documents/research_projects/paml-4.10.6/bin/" # Define path to codeml.ctl file
cmd <- paste0("codeml ", ctl_file) # Define command to run codeml.ctl

# LOAD TREE FILE
tree_file <- "TAS1R1_revised_tree_following_error_message.txt"
tree <- readLines(tree_file)

# ITERATIVELY CHANGE THE FOREGROUND SPECIES 
patterns <- c("\\)", "#1") # Define a list of patterns to replace
replacements <- c("\\)#1", "#2") # Define a list of replacement strings

while (any(grepl(patterns[1], tree))) {
  for (i in 1:length(patterns)) {
    tree <- gsub(patterns[i], replacements[i], tree, fixed = TRUE)
  }
  writeLines(tree, "TAS1R1_revised_tree_following_error_message.txt")
  file.rename("TAS1R1_revised_tree_following_error_message.txt", "TAS1R1_revised_tree_following_error_message.txt")
  system("./codeml")
  dir_prefix <- "TAS1R1_Alt_"
  files_to_copy <- c("2NG.dN", "2NG.dS", "2NG.t", "4fold.nuc", "Inf", "rst",
                     "rst1", "rub", "test_output",
                     "TAS1R1_revised_tree_following_error_message.txt")
  new_dir <- "~/Documents/research_projects/paml-4.10.6/bin/"
  for (j in 1:length(patterns)) {
    dir.create(paste0(dir_prefix, j), showWarnings = FALSE)
    for (k in 1:length(files_to_copy)) {
      file.copy(files_to_copy[k], paste0(new_dir, "/", files_to_copy[k]))
    }
  }
  patterns <- gsub("#1", "#2", patterns)
  replacements <- gsub("#2", "#3", replacements)
}

