# We want to test that R is installed properly and
# that we don't have issues with installing packages
# and running code presented to you successfully


# Check if pacman is installed. If not install it and load it
if(!require(pacman)){install.packages("pacman")}
library(pacman)
# Use pacman to load the other packages needed
p_load(getwiki, # Gets clean version of the body text from a wikipedia article
       tm, # Useful functions for text mining
       wordcloud)

p_information(getwiki)
p_funs(tm)

# If you want to learn about packages a lot of times they
# come with "vignettes" which are essentially just brief
# intros to the package and how to use them in a friendly
# form. The pacman package offers lots of ways to get information
# about packages and it can provide a list of vignettes that packages
# have available
#p_vignette(getwiki)      


# Feel free to choose what article you want
text <- get_wiki("Data science")
text <- get_wiki("Steel")
text <- get_wiki("Electric arc furnace")


text <- random_wiki(); print(names(text)) # Get random wiki article and print the name

output <- text |>                  
  list() |>
  VectorSource() |>
  SimpleCorpus() |>
  tm_map(content_transformer(tolower)) |>
  tm_map(removePunctuation) |>
  tm_map(removeNumbers) |>
  tm_map(removeWords, stopwords()) |>
  TermDocumentMatrix(control = list(minWordLength = 1)) |>
  as.matrix() |> 
  rowSums() |> 
  sort(decreasing = TRUE)


wordcloud(names(output), 
          output, 
          min.freq = 3, 
          max.words = 100,
          colors = brewer.pal(8, "Dark2")
          )
