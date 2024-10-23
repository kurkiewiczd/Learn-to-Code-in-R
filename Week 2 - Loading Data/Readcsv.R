### Packages and files required
## Packages
# lubridate: makes it easier to do the things R does with date-times and possible to do the things R does not.
install.packages('lubridate')
# readr: Provides fast and friendly way to read rectangular (tabular) data from delimited files, such as comma-separated values (CSV) and tab-separated values (TSV)
install.packages("readr") 
# readxl & xlsx: Makes it easy to read data from Excel (.xlsx) files
install.packages("readxl")
# install.packages("xlsx")

# Load the installed packages
library(lubridate)
library(readr)
library(readxl)
# library(xlsx)

### Files
# File locations and name
filenamecsv <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.csv"
filenametxt <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.txt"
filenamexlsx <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.xlsx"


#### Reading Data from a CSV File in R ####

### Coding
## R base functions
# read.delim: Read files with any delimiter. If no delimiter is specified, it will automatically guess.
Inventory.delim <- read.delim(filenamecsv, sep = ",", dec = ".")
# read.csv:  Read a comma delimited file with period for decimal marks.
Inventory.csv <- read.csv(filenamecsv, header = TRUE, sep = ",")


## readr package
# read_delim: Read files with any delimiter. If no delimiter is specified, it will automatically guess.
Inventory_delim <- read_delim(filenametxt)
# read_csv:  Read a comma delimited file with period for decimal marks.
Inventory_csv <- read_csv(filenamecsv)

# Convert Creation Date from character into date type.
Inventory_csv$`Creation Date` <- mdy(Inventory_csv$`Creation Date`)
# Check the column names and rename a column name using its index.
colnames(Inventory_csv)
colnames(Inventory_csv)[12] <- "Creation_Date"

# *read.csv2() & read_csv2() : Read semicolon delimited files with comma for decimal marks. 


