cscript
import delimited hhda2_c.csv

label variable siteid     "Site ID"
label variable ghousecode "Household ID"
label variable gvillcode  "Village ID"
label variable fs_h_lead  "Has the household recieved any cash from forest services"

note fs_h_lead: Q: Generated from: Has the household over the past 12 months received any cash or in kind payments related to the following forest services?
note fs_h_lead : Source: Annual hoursehold survey 2
note fs_h_lead :  Source file: hhda2_c.csv

include lab_miss.do

label values fs_h_lead yesno_lb

compress

label data "Annual 2: Whether or not payments for forest services"    

datasignature set, reset       
save processed/hhda2_c.dta, replace