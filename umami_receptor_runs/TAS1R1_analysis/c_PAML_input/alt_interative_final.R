# NOTE: This is the script for the TAS1R1 PAML sequence run for the alternative 
# model. When this script was run, all of the trees, the alignment and codeml 
# file were placed within the working directory (bin directory in command 
# line PAML program) where the codeml file contained the settings for the 
# alternative branch-site model. 

# RUN PAML THROUGH THIS SCRIPT 
setwd("~/Documents/paml-4.10.6/bin/") # Set working directory
ctl_file <- "~/Documents/paml-4.10.6/bin/" # Define path to codeml.ctl file
cmd <- paste0("codeml ", ctl_file) # Define command to run codeml.ctl

# SETTING UP NEW DIRECTORIES 
dir_prefix <- "TAS1R1_Alt_" # Define the directory name prefix
files_to_copy <- c("2NG.dN", "2NG.dS", "2NG.t", "4fold.nuc", "Inf", "rst", 
                   "rst1", "rub", "test_output", 
                   "TAS1R1_revised_tree_following_error_message.txt")
new_dir <- "~/Documents/paml-4.10.6/bin/"

# ITERATIVELY CHANGE THE TREE FILE  
for (i in 1:23) {
  new_filename <- paste0("TAS1R1_revised_tree_following_error_message", i, ".txt") # Construct the new file name using paste()
  # tree <- readLines(new_filename) # Use the new file name in your file processing code
  file.rename(new_filename, "TAS1R1_revised_tree_following_error_message.txt")
  system("./codeml") # Execute command using system()
  dir_name <- paste0(dir_prefix, i) # Move this line outside of the inner loop
  if (!file.exists(dir_name)) {
    dir.create(dir_name)
  }
  for (j in 1:length(files_to_copy)) {
    file.copy(files_to_copy[j], paste0(dir_name, "/", files_to_copy[j]), overwrite = TRUE, recursive = TRUE, copy.mode = TRUE)
  }
}

