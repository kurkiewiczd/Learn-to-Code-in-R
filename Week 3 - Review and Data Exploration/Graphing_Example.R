# Load necessary libraries
#installl.packages("pacman")
library(pacman) # Brings in p_load
p_load(readxl)   # For reading Excel files
p_load(dplyr)    # For data manipulation
p_load(ggplot2)  # For data visualization
p_load(gridExtra) # For arranging multiple plots together


#location_data <- read_xlsx("Week 3 - Review and Data Exploration/Data/Inventory.xlsx")

fileloc_inventory <- "C:/Users/kurkiewiczd/Projects/Learn-to-Code-in-R/Week 3 - Review and Data Exploration/Data/Inventory.csv"
#inv <- read.csv(fileloc_inventory)
inv <- readr::read_csv(fileloc_inventory)

location_data <- inv
# Summarize data: Count occurrences of each combination of Subinventory and Inventory Locations
location_summary <- location_data %>%
  group_by(`Subinventory Location`, `Inventory Location`) %>%   # Group by both location columns
  summarise(Count = n()) %>%                                    # Count the number of occurrences per group
  ungroup()                                                     # Remove grouping for easier plotting

# Plot a histogram of the count of occurrences for each location pair
histogram_plot <- ggplot(location_summary, aes(x = Count)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black", aes(y = ..density..)) +  # Create histogram with specified binwidth
  labs(title = "Histogram of Location Pair Counts",                  # Set histogram title
       x = "Count of Location Pair Occurrences",                     # Label x-axis
       y = "Frequency") +                                            # Label y-axis
  theme_minimal() + 
  geom_density()                                                    # Apply a minimal theme for a clean look

#print(histogram_plot)

# Plot the heatmap with ggplot2
heatmap_plot <- ggplot(location_summary, aes(x = `Subinventory Location`, y = `Inventory Location`, fill = Count)) +
  geom_tile(color = "white") +                                    # Create tiles, adding a white border for clarity
  scale_fill_gradient(low = "lightblue", high = "darkblue") +     # Set color gradient (light for low, dark for high)
  labs(title = "Heatmap of Subinventory and Inventory Locations", # Set chart title
       x = "Subinventory Location",                               # Label x-axis
       y = "Inventory Location",                                  # Label y-axis
       fill = "Frequency") +                                        # Label color legend
  theme_minimal() +                                                   # Apply a minimal theme for a clean look
  theme(axis.text.x = element_text(angle = 45, hjust = 1))        # Rotate x-axis labels for readability

# Combine the heatmap and histogram vertically
grid.arrange(heatmap_plot, histogram_plot, nrow = 2)
