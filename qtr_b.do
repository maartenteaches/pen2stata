cscript
import delimited qtr_b.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var fup_lead   "Did household collect any unprocessed forest products in the past month"

note fup_lead: Q: Did household collect any unprocessed forest products in the past month
note fup_lead: Source: Quarterly surveys
note fup_lead: Source file: qtr_b.csv

include lab_miss.do

label values fup_lead yesno_lb

compress
label data "Quarterly: income from unprocessed forest products"
datasignature set, reset

save processed/qtr_b.dta, replace