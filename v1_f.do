cscript
import delimited "v1_f.csv", clear

label var siteid "Site ID"
label var gvillcode "Village ID"
label var fi_lead "Does the village have any forest institutions?"

note fi_lead : Q: Does the village have any forest institutions?

foreach var of varlist *_lead {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_f.csv
}

include lab_miss.do

label values *_lead yesno_lb

compress
label data "Village 1: Forest institutions"
datasignature set, reset
save processed/v1_f.dta, replace