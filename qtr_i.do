cscript
import delimited qtr_i.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var liv_lead   "Did household own any adult animals in the past 3 months"
label var ani_lead   "Did household produce any animal products/ services in the past 3 months"
label var linp_lead  "Did household use any inputs in livestock production in the past 3 months"
label var fod_lead   "Did household graze animals or bring fodder to their farm in the past 3 months"

note liv_lead   : Q: Did household own any adult animals in the past 3 months
note ani_lead   : Q: Did household produce any animal products/ services in the past 3 months
note linp_lead  : Q: Did household use any inputs in livestock production in the past 3 months
note fod_lead   : Q: Did household graze animals or bring fodder to their farm in the past 3 months

foreach var of varlist *_lead {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_i.csv
}

include lab_miss.do

label values *_lead yesno_lb
compress
label data "Quarterly: Income from livestock"
datasignature set, reset
save processed/qtr_i.dta, replace  