# From .txt file, read words 
text <- readLines("filename.txt")

# Convert to lowercase (for case-insensitive frequency counts)
text <- tolower(text)

# Tokenize text
words <- strsplit(text, "\\s+")

# Flatten list
words <- unlist(words)

# Remove punctuation
words <- gsub("[[:punct:]]", "", words)

# Create table of word frequencies
word_freq <- table(words)

# Order table -- descending order of frequency
sorted_word_freq <- sort(word_freq, decreasing = TRUE)

# Display top N most repeated words, e.g.,
N <- 250  
# can edit N, eg until you get frequency = 1
top_words <- head(sorted_word_freq, N)

# Print results
cat("Top", N, "most repeated words:\n")
print(top_words)
