# Loading required packages for this Exploration
require(readr)
require(dplyr)
require(lubridate)
require(reshape)
require(ggplot2)
require(plotly)
require(treemap)
require(plyr)
require(stringr)

# Loading Data from csv to dataframes
pathLoan <- './data/LoanStats3a.csv'
pathLoanRejected <- './data/RejectStatsA.csv'
df_loan <- read_csv(pathLoan)
df_loan_rejected <- read_csv(pathLoanRejected)
colnames(df_loan)
# Cleaning Data 
# Selecting just what we need for the exploration 
df_loan <- select(df_loan,1:51)
df_loan$mths_since_last_major_derog <- NULL
df_loan$mths_since_last_delinq <- NULL
df_loan$mths_since_last_record <- NULL
df_loan$next_pymnt_d <- NULL
df_loan$url <- NULL
# Clearing Dates for secmentation
df_loan$Year <- as.numeric(str_extract(df_loan$issue_d, "([0-9]+).*$"))




