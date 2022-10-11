cscript
import delimited hhda2_b.csv

label variable siteid     "Site ID"
label variable ghousecode "Household ID"
label variable gvillcode  "Village ID"
label variable cue_lead   "Has the household faced any major crisis or unexpectedly large expenditures"

note cue_lead : Q: Has the household faced any major income shortfalls or unexpectedly large expenditures during the past 12 months?
note cue_lead : Source: Annual hoursehold survey 2
note cue_lead :  Source file: hhda2_b.csv

include lab_miss.do

label values cue_lead yesno_lb

compress

label data "Annual 2: Whether or not crisis and unexpected expenditures"    

datasignature set, reset       
save processed/hhda2_b.dta, replace