cscript
import delimited "v2_d.csv", clear

label var siteid     "Site ID"
label var gvillcode  "Village ID"
label var fs_benefit "Has village received any benefits related to forest services over past 12 months"
label var fs_support "Has village received any forest related support over past 12 months?"

note fs_benefit : Q: Has the village (as a community or individuals in the village) received any direct benefits (in kind or in cash) related to forest services over the past 12 months?
note fs_support : Q: Has the village received any forestry-related external support (technical assistance, free inputs, etc.) from government, donors, NGOs) over the past 12 months? 

foreach var of varlist fs* {
    note `var' : Source: Village survey 2
   	note `var' : source file: v2_d.csv
}
include lab_miss.do

label define benefit_lb 0 "no" ///
                        1 "yes, directly to households" ///
                        2 "yes, directly to village (e.g., development project)" ///
                        3 "yes, both to household and village" ///
                        `miss_lb'
label values fs_benefit benefit_lb                        
label values fs_support yesno_lb

compress
label data "Village 2: Forest services"
datasignature set, reset
save processed/v2_d.dta, replace
