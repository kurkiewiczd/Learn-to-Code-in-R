#### Reading Data from a Excel File in R ####

### Coding
## readxl package 
# read_xls() & read_xlsx(): makes it easy to get data out of Excel and into R. 
# Compared to many of the existing packages (e.g. gdata, xlsx, xlsReadWrite) readxl has no external dependencies, thus easy to install and use on all operating systems.
Inventory_xlsx <- read_excel(filenamexlsx) 
# Read only selected sheet
sheetnames <- excel_sheets(filenamexlsx)
Inventory_xlsx_desc <- read_excel(filenamexlsx, sheet = "Description")
# Read all sheets
Inventory_sheets <- lapply(sheetnames, read_excel, path = filenamexlsx)
# Name the sheets 
names(Inventory_sheets) <- sheetnames
# view the sheet as a dataframe
Inventory_xlsx_quant <- Inventory_sheets[["Quantity"]]

# subset the data by columns needed 
Inventory_xlsx_subset <- subset(Inventory_xlsx, select = c("Summarize Date", "Item Number", "Item Type", "Lot Number", "Quantity"))
