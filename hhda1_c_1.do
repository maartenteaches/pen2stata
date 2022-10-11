cscript
import delimited "hhda1_c_1.csv", clear

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var land_h_lead  "Did the household own any land?"
note land_h_lead : Q: generated
note land_h_lead : Source: Annual hoursehold survey 1
note land_h_lead : source file: hhda1_c_1.csv

include lab_miss.do

label values land_h_lead yesno_lb

compress
label data "Annual 1: own land"
datasignature set, reset
save processed/hhda1_c_1.dta, replace