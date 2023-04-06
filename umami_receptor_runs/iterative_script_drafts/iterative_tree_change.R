# Read in the tree from file
tree_file <- "TAS1R1_revised_tree_following_error_message.txt"
tree <- readLines(tree_file)

# Split the tree string into individual branches
branches <- strsplit(tree, split = ",")

# Initialize a counter variable to keep track of which branch to add the "#1" to
counter <- 1

# Iterate over each branch and add the "#1" to the appropriate branch
for (i in 1:length(branches)) {
  for (j in 1:length(branches[[i]])) {
    if (length(branches[[i]][[j]]) > 0 && !grepl("#", branches[[i]][[j]])) {
      branches[[i]][[j]] <- paste0(branches[[i]][[j]], "#1")
    }
  }
}

# Combine the branches back into a single tree string
tree_with_numbers <- paste(branches, collapse = ",")

# Write the modified tree back to file
writeLines(tree_with_numbers, con = tree_file)
