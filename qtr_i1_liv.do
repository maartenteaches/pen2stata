cscript
import delimited qtr_i1_liv.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var liv_type   "Livestock"
label var liv_begnum "Livestock begining number"
label var liv_sold   "Livestock sold (inc barter)"
label var liv_slau   "Livestock slaughtered for own use"
label var liv_lost   "Livestock lost (theft, died?)"
label var liv_bgt    "Livestock bought or gift recieved"
label var liv_new    "Livestock new from own stock"
label var liv_endnum "Livestock end number"
label var liv_unpx   "Livestock price per unit"
label var liv_endval "Livestock total value"

note liv_type   : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? Livestock
note liv_begnum : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? begenning number (3 months ago)
note liv_sold   : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? sold (incl. barter), live or slaughtered
note liv_slau   : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? slaughtered for own use (or gift given)
note liv_lost   : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? lost (theft, died, ...)
note liv_bgt    : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? bought or gift received
note liv_new    : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? new from own stock
note liv_endnum : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? end number (now)
note liv_unpx   : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? price per adult animal
note liv_endval : Q: What is the number of ADULT animals your household has now, and how many have you sold, bought, slaughtered or lost during the past 3 months? total end value

foreach var of varlist liv*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_i1_liv.csv
}

include lab_miss.do

label values liv_type lives_lb
label values liv_begnum liv_sold liv_slau liv_lost liv_bgt liv_new liv_endnum liv_unpx liv_endval just_miss_lb

compress
label data "Quarterly: Income from livestock"
datasignature set, reset
save processed/qtr_i1_liv.dta, replace   