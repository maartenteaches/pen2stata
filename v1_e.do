cscript
import delimited "v1_e.csv", clear

label var siteid     "Site ID"
label var gvillcode  "Village ID"
label var frb_v_lead "Does the village have a forest resource base?"

note frb_v_lead : Q: Does the village have a forest resource base?

foreach var of varlist *_lead {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_e.csv
}

include lab_miss.do

label values *_lead yesno_lb

compress
label data "Village 1: Forest resource base"
datasignature set, reset
save processed/v1_e.dta, replace
