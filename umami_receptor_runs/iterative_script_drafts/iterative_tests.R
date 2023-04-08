# LOAD TREE FILE
setwd("~/Documents/paml-4.10.6/bin/") # Set working directory
tree_file <- "TAS1R1_revised_tree_following_error_message.txt"
tree <- readLines(tree_file)
original_file <- "TAS1R1_revised_tree_following_error_message_constant.txt"
original_tree <- readLines(original_file)

patterns <- c(",")
foreground <- c("#1,")
# replacements <- c(")", ")#1")

comma_indexes <- unlist(gregexpr(",", tree[[3]]))


# ITERATIVELY CHANGE THE FOREGROUND SPECIES 
for (i in 1:length(patterns)) {
  for (j in 1:length(comma_indexes))
    if (i == comma_indexes[i]) {
      tree <- gsub(patterns[i], replacements[i], tree)
      print(tree)
  }
}


for (i in 1:length(comma_indexes)) {
  if (i == comma_indexes[i]) {
    tree[[3]] <- sub(patterns[i], foreground[i], tree[[3]])
    print(tree)
    # tree[[3]] <- sub(patterns, foreground, tree[[3]], fixed = TRUE, from = comma_indexes[i])
  }
  # writeLines(tree, "TAS1R1_revised_tree_following_error_message.txt") # Write the modified tree to a new file  
  # tree <- sub("#1,", ",", tree) # Perform the substitution
}



# for (i in 1:length(comma_indexes)) {
  # tree <- sub(comma_indexes[i], "#1,", tree, fixed = TRUE)
  # tree <- sub(patterns[i], foreground[i], tree) # Perform the substitution
  # writeLines(tree, "TAS1R1_revised_tree_following_error_message.txt") # Write the modified tree to a new file
  # print(tree)
  # tree <- sub("#1,", ",", tree) # Perform the substitution
# }

# tree <- strsplit(tree, ")", fixed = TRUE)
# print(grep(")", tree[[3]], fixed = TRUE))
# print(substr(tree[[3]], 1, 30))
# rm(list = ls())
