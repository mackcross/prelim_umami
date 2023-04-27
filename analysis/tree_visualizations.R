library(tidyverse)
library(BiocManager)
library(ggtree)
# BiocManager::install("ggtree")

# Likelihood Ratio Test 
test_statistic <- 2 * (alternative_log_likelihood - null_log_likelihood)
# extract log likelihood values from PAML output files
null_log_likelihood <- -1000.0   # replace with actual value
alternative_log_likelihood <- -900.0   # replace with actual value

# calculate test statistic
test_statistic <- 2 * (alternative_log_likelihood - null_log_likelihood)

# calculate p-value
df <- 1   # degrees of freedom
p_value <- 1 - pchisq(test_statistic, df)

# print test results
cat("LRT test statistic:", test_statistic, "\n")
cat("p-value:", p_value, "\n")






tas1r3 <- read.tree("umami_receptor_runs/TAS1R3_analysis/c_PAML_input/TAS1R3_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R3_analysis/c_PAML_input/TAS1R3_revised_tree_following_error_message.txt
tas1r1 <- read.tree("umami_receptor_runs/TAS1R1_analysis/c_PAML_input/TAS1R1_revised_tree_following_error_message.txt")
# pathway for lab computer: Documents/research_projects/umami_receptor/umami_receptor_runs/TAS1R1_analysis/c_PAML_input/TAS1R1_revised_tree_following_error_message.txt

# TAS1R3 Tree
TAS1R3_tree <- ggtree(tas1r3) + geom_tiplab(as_ylab=TRUE, color='firebrick')


# TAS1R1 Tree
TAS1R3_tree <- ggtree(tas1r1) + geom_tiplab(as_ylab=TRUE, color='firebrick')

