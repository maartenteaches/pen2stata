cscript
import delimited qtr_i4_fod.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var fod_land   "Type of grazing Land Type"
label var fod_tenu   "Ownership of grazing land"
label var fod_share  "Approximate Share"

note fod_land   : Q: Please indicate approx. share of fodder, either grazed by your animals or brought to the farm by household members Type of grazing Land Type
note fod_tenu   : Q: Please indicate approx. share of fodder, either grazed by your animals or brought to the farm by household members Ownership of grazing land
note fod_share  : Q: Please indicate approx. share of fodder, either grazed by your animals or brought to the farm by household members Approximate Share

foreach var of varlist fod*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_i4_fod.csv
}

include lab_miss.do

label values fod_land land_lb
label values fod_tenu tenur_lb
label values fod_share just_miss_lb

compress
label data "Quarterly: Income from livestock"
datasignature set, reset
save processed/qtr_i4_fod.dta, replace   
