# Loading required packages for this Exploration
###############################
require(readr)
require(readxl)
require(dplyr)
require(lubridate)
require(reshape)
require(ggplot2)
require(plotly)
require(treemap)
require(plyr)
require(stringr)
require(tidyverse)

# Loading Data from csv to dataframes
###############################
pathLoan <- './data/LoanStats3a.csv'
pathLoanRejected <- './data/RejectStatsA.csv'
df_loan <- read_csv(pathLoan)
df_loan_rejected <- read_csv(pathLoanRejected)
colnames(df_loan)

# Cleaning Data 
###############################
# Selecting just what we need for the exploration 
df_loan <- select(df_loan,1:51)
df_loan$mths_since_last_major_derog <- NULL
df_loan$mths_since_last_delinq <- NULL
df_loan$mths_since_last_record <- NULL
df_loan$next_pymnt_d <- NULL
df_loan$url <- NULL
# Clearing Dates for secmentation
df_loan$Year <- as.numeric(str_extract(df_loan$issue_d, "([0-9]+).*$"))

# Grouping data

## Count CountByState
###############################
CountByState  <- df_loan %>%     
  dplyr::group_by(
    State = df_loan$addr_state
  )%>%       
  tally()
#Rename
colnames(CountByState)[2] <- "Count"
# Clear NA
CountByState <- na.omit(CountByState)
# ordering By Count Desc
CountByState <- CountByState[order(-CountByState$Count),]

## Count CountByEmp_length
###############################
CountByEmp_length  <- df_loan %>%     
  dplyr::group_by(
    emp_length = df_loan$emp_length
  )%>%       
  tally()
#Rename
colnames(CountByEmp_length)[2] <- "Count"
# Clear NA
CountByEmp_length <- na.omit(CountByEmp_length)
# ordering By Count Desc
CountByEmp_length <- CountByEmp_length[order(-CountByEmp_length$Count),]

## Count CountByEmp_length_Term
###############################
CountByEmp_length_term  <- df_loan %>%     
  dplyr::group_by(
    emp_length = df_loan$emp_length,
    term = df_loan$term
  )%>%       
  tally()
#Rename
colnames(CountByEmp_length_term)[3] <- "Count"
# Clear NA
CountByEmp_length_term <- na.omit(CountByEmp_length_term)
# ordering By Count Desc
CountByEmp_length_term <- CountByEmp_length_term[order(-CountByEmp_length_term$Count),]

## Count CountByhome_ownership
###############################
CountByHome_ownership  <- df_loan %>%     
  dplyr::group_by(
    home_ownership = df_loan$home_ownership
  )%>%       
  tally()
#Rename
colnames(CountByHome_ownership)[2] <- "Count"
# Clear NA
CountByHome_ownership <- na.omit(CountByHome_ownership)
# ordering By Count Desc
CountByHome_ownership <- CountByHome_ownership[order(-CountByHome_ownership$Count),]



## Open Excel File with States and locations
###############################
## Using this website we can add the location information to our data https://geocode.localfocus.nl/
## the excel file was creating and now we can open the file using read_excel funtion
mapdata <-  read_excel("./data/CountByState.xlsx")

## Creating Map By State/Loan
###############################

ggplot(data = mapdata) + 
  geom_polygon(aes(x = lon, y = lat, fill = mapdata$count, group = mapdata$state), color = "white") + 
  coord_fixed(1.3) +
  guides(fill=FALSE)  





