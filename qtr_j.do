cscript
import delimited qtr_j.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var oth_lead   "Did household have any other income source in the past 3 months"

note oth_lead   : Q: Did household have any other income source in the past 3 months
note oth_lead   : Source: Quarterly surveys
note oth_lead   : Source file: qtr_j.csv

include lab_miss.do

label values *_lead yesno_lb

compress
label data "Quarterly: Other income sources"
datasignature set, reset
save processed/qtr_j.dta, replace  
