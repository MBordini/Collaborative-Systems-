# Load necessary libraries
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
  
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    install.packages("ggplot2")
    
# I have loaded the ggplot2 library and the dlpyr 
    # the dplyr helped me manipulate data with additional functions 
    # the ggplot2 helped me create complex plots from data in a data frame as per visualization below 
   
library(dplyr)
library(ggplot2)

# Load the libraries
library(readxl)

MB_ds <- read_excel("~/MB_ds.xlsx")

View(MB_ds)

# I have loaded the %>% (pipe) operator from the dplyr package.
# I selected the commands below and clicked on run above, with this I can see the plot on the visualization box 
MB_ds %>%
  ggplot(aes(x = weight, y = Assistance, colour = tear)) +
  geom_line() +
  labs(title = "Total births with assistance",
       subtitle = "Baby's weight",
       x = "weight",
       y = "Assistance",
       color = "tear" )

# as we can see, patients that had forceps , had babies with average 2.5kg to 4.5kg and no tear
# same with ventouse 
# we can see if the birth is instrumental, there is barely no tear associated 
