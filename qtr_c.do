cscript
import delimited qtr_c.csv

label var siteid "Site ID"
label var ghousecode "Household ID"
label var gvillcode "Village ID"
label var qtr "Quarter"
label var fpr_lead "Did household produce any processed forest products in the past month"
label var finp_lead "Did household use any unprocessed forest products to produce final products in t"

note fpr_lead: Q: Did household produce any processed forest products in the past month
note fpr_lead: Source: Quarterly surveys
note fpr_lead: Source file: qtr_c.csv
note finp_lead: Q: Did household  use any uprocessed forest products to produce final products in the past month
note finp_lead: Source: Quarterly surveys
note finp_lead: Source file: qtr_c.csv

include lab_miss.do

label values fpr_lead finp yesno_lb


compress
label data "Quarterly: income from processed forest products"
datasignature set, reset

save processed/qtr_c.dta, replace
