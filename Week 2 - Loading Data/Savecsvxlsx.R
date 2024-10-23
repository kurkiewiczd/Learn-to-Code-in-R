#### Write (save) Data from R in Excel ####
# readr package
# write_delim() & write_csv(): saves a data frame to a delimited file.
readr::write_csv(Inventory_csv, "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory_new.csv")


# openxlsx package
# write.xlsx() & write.xlsx2(): Preserves the data type. 
write.xlsx(Inventory_xlsx, "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory_modified.xlsx", sheetName = "Inventory")
# Create a named list of your dataframes. The list names will be the worksheet names. And write the file with multiple worksheets
sheetnames_list <- list("Description" = Inventory_xlsx_desc, "Quantity" = Inventory_xlsx_quant)
write.xlsx(sheetnames_list, "C:/Users/mbuthiai/OneDrive - CharterMfg Production Directory/Desktop/New folder/Inventory_modified.xlsx", append = FALSE)