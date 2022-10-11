cscript
import delimited "v1_d.csv", clear

label var siteid     "Site ID"
label var gvillcode  "Village ID"
label var mgt_lead   "Does village practice any form of active and deliberate forest management?"
label var for_v_lead "Does the village have a forest?"

note mgt_lead   : Q: Does village practice any form of active and deliberate forest management?
note for_v_lead : Q: Does the village have a forest?


foreach var of varlist *_lead {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_d.csv
}

include lab_miss.do

label values *_lead yesno_lb

compress
label data "Village 1: Forest and land cover/use"
datasignature set, reset
save processed/v1_d.dta, replace
