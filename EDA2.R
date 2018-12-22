# EDA2
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
myColNames <- as.data.frame(colnames(df_loan))
