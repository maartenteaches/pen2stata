cscript
import delimited qtr_d.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var fish_lead  "Did household catch any fish from the wild in the past 3 months"
label var aqua_lead  "Did household catch any fish from ponds in the past 3 months"
label var env_lead   "Did household collect any other wild products in the past 3 months"

note fish_lead : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month?
note fish_lead : Source: Quarterly surveys
note fish_lead : Source file: qtr_d.csv
note aqua_lead : Q: How much fish did your household catch from ponds (aquaculture) in the past month?
note aqua_lead : Source: Quarterly surveys 
note aqua_lead : Source file: qtr_d.csv
note env_lead : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month?
note env_lead : Source: Quarterly surveys 
note env_lead : Source file: qtr_d.csv

include lab_miss.do

label values fish_lead aqua_lead env_lead yesno_lb

compress
label data "Quarterly: Fishing, aquaculture, Non-forest environmental income"
datasignature set, reset

save processed/qtr_d.dta, replace
