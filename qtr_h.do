cscript
import delimited qtr_h.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var crop_lead  "Did household harvest any crops in the past 3 months"
label var cinp_lead  "Did household use any inputs for crop production in the past 3 months"

note crop_lead  : Q: What are the quantities and values of crops that household has harvested during the past 3 months?
note cinp_lead  : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)?

foreach var of varlist crop_lead cinp_lead {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_f.csv
}

include lab_miss.do

label values crop_lead cinp_lead yesno_lb

compress
label data "Quarterly: Income from agriculture - crops"
datasignature set, reset
save processed/qtr_h.dta, replace     
