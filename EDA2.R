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

library(readxl)
pathDic <- 'data/LCDataDictionary.xlsx'
LCDataDictionary <- read_excel(pathDic)

# BoxPlot

prestamosbyLong <- ggplot(data = CountByEmp_length) +
  aes(x = emp_length, y = Count, fill = emp_length, color = emp_length) +
  geom_boxplot() +
  labs(title = "Cantidad de prestamos por longevidad laboral") +
  theme_minimal()

percebyLong <- ggplot(data = CountByEmp_length_term) +
  aes(x = emp_length, fill = term, weight = Count) +
  geom_bar(position = "fill") +
  labs(title = "Porcentaje de Plazo de prestamos por longevidad laboral") +
  theme_minimal()

prestamosbyHome <- ggplot(data = CountByHome_ownership) +
  aes(x = home_ownership, weight = Count) +
  geom_bar(fill = "#0c4c8a") +
  labs(title = "Prestamos por Home Ownership") +
  theme_minimal()


