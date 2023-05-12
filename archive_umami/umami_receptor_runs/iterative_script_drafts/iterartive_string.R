# create a character string with parentheses
paren_str <- "(a(b(c)d)e)f(g(h)i)j(k)lm(n)o(p)"

# split the string into a vector of characters
paren_vec <- strsplit(paren_str, "")[[1]]

# initialize a counter variable to keep track of the index of the last ")" seen
last_close_paren <- 0

# initialize an empty vector to store the modified strings
modified_strs <- c()

# loop through each character in the vector
for (i in seq_along(paren_vec)) {
  
  # check if the character is a close parenthesis
  if (paren_vec[i] == ")") {
    
    # add a "#1" after the close parenthesis
    paren_vec <- c(paren_vec[1:i], "#1", paren_vec[(i+1):length(paren_vec)])
    
    # delete the "#1" from the previous close parenthesis (if it exists)
    if (last_close_paren > 0) {
      paren_vec[last_close_paren+1] <- ""
    }
    
    # update the counter variable to the current index
    last_close_paren <- i
    
  }
  
  # paste the modified vector back into a string and append it to the vector of modified strings
  modified_strs <- append(modified_strs, paste(paren_vec, collapse = ""))
}

# print the vector of modified strings
cat("Modified strings: ", modified_strs, "\n")
