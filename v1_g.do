cscript
import delimited "v1_g.csv", clear

label var siteid "Site ID"
label var gvillcode "Village ID"
label var fug_v_lead "How many forest user groups are there in the village?"

note fug_v_lead : Q: How many forest user groups are there in the village?

foreach var of varlist *_lead {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_g.csv
}

include lab_miss.do

label values *_lead just_miss_lb

compress
label data "Village 1: Forest User Groups (FUG)"
datasignature set, reset
save processed/v1_g.dta, replace