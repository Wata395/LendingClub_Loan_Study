# Lending Club Loan Study for Cenfotech Project


Analisis Exploratiorio de prestamos otorgados por "Lending Club" 2007-2011

# Sobre Lending Club

Lending Club es una compañía estadounidense de préstamo entre particulares, con sede en San Francisco (California). Fue el primer sitio de préstamo entre particulares en registrar sus productos como valores con la "Securities and Exchange Commission"" (SEC), y ofrecer un servicio de préstamos en el mercado secundario. En junio de 2013, Lending Club había generado más de 2.000 millones de dólares en préstamos, y una media de 2,7 millones en peticiones de nuevos préstamos.

# Diccionario de Datos

|Column Names                  |Description     |
|:-----------------------------|---------------:|
|**acceptD**                   |The date which the borrower accepted the offer|
|**accNowDelinq**              |The number of accounts on which the borrower is now delinquent.|
|**accOpenPast24Mths**         |Number of trades opened in past 24 months.|
|**addrState**                 |The state provided by the borrower in the loan application|
|**all_util**                  |Balance to credit limit on all trades|
|**annual_inc_joint**          |The combined self-reported annual income provided by the co-borrowers during registration|
|**annualInc**                 |The self-reported annual income provided by the borrower during registration.|
|**application_type**          |Indicates whether the loan is an individual application or a joint application with two co-borrowers|
|**avg_cur_bal**               |Average current balance of all accounts|
|**bcOpenToBuy**               |Total open to buy on revolving bankcards.|
|**bcUtil**                    |Ratio of total current balance to high credit/credit limit for all bankcard accounts.|
|**chargeoff_within_12_mths**  |Number of charge-offs within 12 months|
|**collections_12_mths_ex_med**|Number of collections in 12 months excluding medical collections|
|**creditPullD**               |The date LC pulled credit for this loan|
|**delinq2Yrs**                |The number of 30+ days past-due incidences of delinquency in the borrower's credit file for the past 2 years|
|**delinqAmnt**                |The past-due amount owed for the accounts on which the borrower is now delinquent.|
|**desc**                      |Loan description provided by the borrower|
|**dti**                       |A ratio calculated using the borrower’s total monthly debt payments on the total debt obligations, excluding mortgage and the requested LC loan, divided by the borrower’s self-reported monthly income.|
|**dti_joint**                 |A ratio calculated using the co-borrowers' total monthly payments on the total debt obligations, excluding mortgages and the requested LC loan, divided by the co-borrowers' combined self-reported monthly income|
|**earliestCrLine**            |The date the borrower's earliest reported credit line was opened|
|**effective_int_rate**        |The effective interest rate is equal to the interest rate on a Note reduced by Lending Club's estimate of the impact of uncollected interest prior to charge off.|
|**emp_title**                 |The job title supplied by the Borrower when applying for the loan.*|
|**empLength**                 |Employment length in years. Possible values are between 0 and 10 where 0 means less than one year and 10 means ten or more years.|
|**expD**                      |The date the listing will expire|
|**expDefaultRate**            |The expected default rate of the loan.|
|**ficoRangeHigh**             |The upper boundary range the borrower’s FICO at loan origination belongs to.|
|**ficoRangeLow**              |The lower boundary range the borrower’s FICO at loan origination belongs to.|
|**fundedAmnt**                |The total amount committed to that loan at that point in time.|
|**grade**                     |LC assigned loan grade|
|**homeOwnership**             |The home ownership status provided by the borrower during registration. Our values are: RENT, OWN, MORTGAGE, OTHER.|
|**id**                        |A unique LC assigned ID for the loan listing.|
|**il_util**                   |Ratio of total current balance to high credit/credit limit on all install acct|
|**ils_exp_d**                 |wholeloan platform expiration date|
|**initialListStatus**         |The initial listing status of the loan. Possible values are – W, F|
|**inq_fi**                    |Number of personal finance inquiries|
|**inq_last_12m**              |Number of credit inquiries in past 12 months|
|**inqLast6Mths**              |The number of inquiries in past 6 months (excluding auto and mortgage inquiries)|
|**installment**               |The monthly payment owed by the borrower if the loan originates.|
|**intRate**                   |Interest Rate on the loan|
|**isIncV**                    |Indicates if income was verified by LC, not verified, or if the income source was verified|
|**listD**                     |The date which the borrower's application was listed on the platform.|
|**loanAmnt**                  |The listed amount of the loan applied for by the borrower. If at some point in time, the credit department reduces the loan amount, then it will be reflected in this value.|
|**max_bal_bc**                |Maximum current balance owed on all revolving accounts|
|**memberId**                  |A unique LC assigned Id for the borrower member.|
|**mo_sin_old_rev_tl_op**      |Months since oldest revolving account opened|
|**mo_sin_rcnt_rev_tl_op**     |Months since most recent revolving account opened|
|**mo_sin_rcnt_tl**            |Months since most recent account opened|
|**mortAcc**                   |Number of mortgage accounts.|
|**msa**                       |Metropolitan Statistical Area of the borrower.|
|**mths_since_last_major_derog**|Months since most recent 90-day or worse rating|
|**mths_since_oldest_il_open** |Months since oldest bank installment account opened|
|**mths_since_rcnt_il**        |Months since most recent installment accounts opened|
|**mthsSinceLastDelinq**       |The number of months since the borrower's last delinquency.|
|**mthsSinceLastRecord**       |The number of months since the last public record.|
|**mthsSinceMostRecentInq**    |Months since most recent inquiry.|
|**mthsSinceRecentBc**         |Months since most recent bankcard account opened.|
|**mthsSinceRecentLoanDelinq** |Months since most recent personal finance delinquency.|
|**mthsSinceRecentRevolDelinq**|Months since most recent revolving delinquency.|
|**num_accts_ever_120_pd**     |Number of accounts ever 120 or more days past due|
|**num_actv_bc_tl**            |Number of currently active bankcard accounts|
|**num_actv_rev_tl**           |Number of currently active revolving trades|
|**num_bc_sats**               |Number of satisfactory bankcard accounts|
|**num_bc_tl**                 |Number of bankcard accounts|
|**num_il_tl**                 |Number of installment accounts|
|**num_op_rev_tl**             |Number of open revolving accounts|
|**num_rev_accts**             |Number of revolving accounts|
|**num_rev_tl_bal_gt_0**       |Number of revolving trades with balance >0|
|**num_sats**                  |Number of satisfactory accounts|
|**num_tl_120dpd_2m**          |Number of accounts currently 120 days past due (updated in past 2 months)|
|**num_tl_30dpd**              |Number of accounts currently 30 days past due (updated in past 2 months)|
|**num_tl_90g_dpd_24m**        |Number of accounts 90 or more days past due in last 24 months|
|**num_tl_op_past_12m**        |Number of accounts opened in past 12 months|
|**open_acc_6m**               |Number of open trades in last 6 months|
|**open_il_12m**               |Number of installment accounts opened in past 12 months|
|**open_il_24m**               |Number of installment accounts opened in past 24 months|
|**open_act_il**               |Number of currently active installment trades|
|**open_rv_12m**               |Number of revolving trades opened in past 12 months|
|**open_rv_24m**               |Number of revolving trades opened in past 24 months|
|**openAcc**                   |The number of open credit lines in the borrower's credit file.|
|**pct_tl_nvr_dlq**            |Percent of trades never delinquent|
|**percentBcGt75**             |Percentage of all bankcard accounts > 75% of limit.|
|**pub_rec_bankruptcies**      |Number of public record bankruptcies|
|**pubRec**                    |Number of derogatory public records|
|**purpose**                   |A category provided by the borrower for the loan request. |
|**reviewStatus**              |The status of the loan during the listing period. Values: APPROVED, NOT_APPROVED.|
|**reviewStatusD**             |The date the loan application was reviewed by LC|
|**revolBal**                  |Total credit revolving balance|
|**revolUtil**                 |Revolving line utilization rate, or the amount of credit the borrower is using relative to all available revolving credit.|
|**serviceFeeRate**            |Service fee rate paid by the investor for this loan.|
|**subGrade**                  |LC assigned loan subgrade|
|**tax_liens**                 |Number of tax liens|
|**term**                      |The number of payments on the loan. Values are in months and can be either 36 or 60.|
|**title**                     |The loan title provided by the borrower|
|**tot_coll_amt**              |Total collection amounts ever owed|
|**tot_cur_bal**               |Total current balance of all accounts|
|**tot_hi_cred_lim**           |Total high credit/credit limit|
|**total_bal_il**              |Total current balance of all installment accounts|
|**total_cu_tl**               |Number of finance trades|
|**total_il_high_credit_limit**|Total installment high credit/credit limit|
|**total_rev_hi_lim**          |Total revolving high credit/credit limit|
|**totalAcc**                  |The total number of credit lines currently in the borrower's credit file|
|**totalBalExMort**            |Total credit balance excluding mortgage|
|**totalBcLimit**              |Total bankcard high credit/credit limit|
|**url**                       |URL for the LC page with listing data.|
|**verified_status_joint**     |Indicates if the co-borrowers' joint income was verified by LC, not verified, or if the income source was verified|
|**zip_code**                  |The first 3 numbers of the zip code provided by the borrower in the loan application.|
|**revol_bal_joint**           |Sum of revolving credit balance of the co-borrowers, net of duplicate balances|
|**sec_app_fico_range_low**    |FICO range (high) for the secondary applicant|
|**sec_app_fico_range_high**   |FICO range (low) for the secondary applicant|
|**sec_app_earliest_cr_line**  |Earliest credit line at time of application for the secondary applicant|
|**sec_app_inq_last_6mths**    |Credit inquiries in the last 6 months at time of application for the secondary applicant|
|**sec_app_mort_acc**          |Number of mortgage accounts at time of application for the secondary applicant|
|**sec_app_open_acc**          |Number of open trades at time of application for the secondary applicant|
|**sec_app_revol_util**        |Ratio of total current balance to high credit/credit limit for all revolving accounts|
|**sec_app_open_act_il**       |Number of currently active installment trades at time of application for the secondary applicant|
|**sec_app_num_rev_accts**     |Number of revolving accounts at time of application for the secondary applicant|
|**sec_app_chargeoff_within_12_mth**|Number of charge-offs within last 12 months at time of application for the secondary applicant|
|**sec_app_collections_12_mths_ex_**|Number of collections within last 12 months excluding medical collections at time of application for the secondary applicant|
|**sec_app_mths_since_last_major_d**|Months since most recent 90-day or worse rating at time of application for the secondary applicant|
|**disbursement_method**            |The method by which the borrower receives their loan. Possible values are: CASH, DIRECT_PAY|