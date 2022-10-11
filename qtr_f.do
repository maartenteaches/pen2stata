cscript
import delimited qtr_f.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var wage_lead  "Has any household member had paid work over the past month"
label var biz_lead   "Is the household involved in any types of businesses"

note wage_lead  : Q: Has any member of the household had paid work over the past month?
note biz_lead   : Q: Are you involved in any types of business?

foreach var of varlist wage_lead biz_lead {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_f.csv
}

include lab_miss.do

label values wage_lead biz_lead yesno_lb

compress
label data "Quarterly: wage income and income from own business"
datasignature set, reset
save processed/qtr_f.dta, replace     
