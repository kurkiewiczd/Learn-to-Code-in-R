### Packages and files required
## Packages
# lubridate: Makes it easier to do the things R does with date-times and possible to do the things R does not.
_
# readr: Provides fast and friendly way to read rectangular (tabular) data from delimited files, such as comma-separated values (CSV) and tab-separated values (TSV)
_
# readxl & xlsx: Makes it easy to read data from Excel files
_
# xlsx: Simplifies the creation/read/write/format of +
+Excel (including older file formats)
install.packages("openxlsx")

# Load the installed packages
_
_
_
_
 library(openxlsx)

### Files
# File locations and name
filenamecsv <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.csv"
filenametxt <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.txt"
filenamexlsx <- "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory.xlsx"


#### Reading Data from a CSV File in R ####

### Coding
## R base function.
# read.delim: Read files with any delimiter. 
_
# read.csv:  Read a comma delimited file with period for decimal marks.
_

## readr package
# read_delim: Read files with any delimiter. 
_
# read_csv:  Read a comma delimited file with period for decimal marks.
_

# Convert Creation Date from character into date type using mdy function from lubridate.
_

# Check the column names and rename a column name using its index.
_
_

# *read.csv2() & read_csv2() : Read semicolon delimited files with comma for decimal marks. 


#### Reading Data from a Excel File in R ####

### Coding
## readxl package 
# read_xls() & read_xlsx(): makes it easy to get data out of Excel and into R. 
# Compared to many of the existing packages (e.g. gdata, xlsx, xlsReadWrite) readxl has no external dependencies, thus easy to install and use on all operating systems.
_
# Check the names of all sheets in the file. And then read only selected sheet
_
_
# Read all sheets
_
# Name the sheets in the created list
_
# view a sheet as a dataframe
_

# subset the data by columns needed 
#Inventory_xlsx_subset <- subset(Inventory_xlsx, select = c("Summarize Date", "Item Number", "Item Type", "Lot Number", "Quantity"))
                                   


#### Write (save) Data from R in Excel ####
# readr package
# write_delim() & write_csv(): saves a data frame to a delimited file.
_

# openxlsx package
# write.xlsx() & write.xlsx2(): Preserves the data type. 
_
# Create a named list of your dataframes. The list names will be the worksheet names. And write the file with multiple worksheets
_
_