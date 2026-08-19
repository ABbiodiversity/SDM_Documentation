# ---
# title: "Bookdown document creation"
# author: "Brandon Allen"
# created: "2026-08-19"
# inputs: []
# outputs: []
# notes: 
#   "This script takes the files present in the 6_bookdown folder and generates the pages
#    for the GitHub page."
# ---

library(bookdown)
library(dplyr)
library(kableExtra)

# Bookdown resources https://bookdown.org/yihui/bookdown/github.html

# Confirms the nojekyll is created
file.create(paste0(getwd(), "/6_bookdown/.nojekyll"))

# Render bookdown
bookdown::render_book(input = "6_bookdown/", 
                      output_format = "bookdown::gitbook",
                      output_dir = "docs/")




