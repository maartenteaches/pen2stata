cscript
import delimited hhda1_d2_imp.csv, clear

label variable siteid     "Site ID"
label variable ghousecode "Household ID"
label variable gvillcode  "Village ID"
label variable imp_type   "Implement"
label variable imp_own    "Number of Units Owned"
label variable imp_totval "Implement total value"

include lab_miss.do

label value imp_type hhassa_lb
label value imp_own imp_totval just_miss_lb

note imp_type : Q: Please indicate the number and value of implements and other large household items that are owned by the household.
note imp_own : Q: No. of units owned
note imp_totval: Q: Total value (current sales value of all units, not purchasing price)

foreach var of varlist imp* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : Source file: hhda1_d2_imp.csv
}

compress
label data "Annual 1: implements and other large household items owned"
datasignature set, reset
save processed/hhda1_d2_imp.dta, replace
