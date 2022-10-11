cscript
import delimited hhda2_a_id.csv

label variable siteid     "Site ID"
label variable ghousecode "Household ID"
label variable gvillcode  "Village ID"
label variable intday     "Day of interview (number)"
label variable intmon     "Month of interview (number)"
label variable intyear    "Year of interview"
label variable entday     "Day questionnaire entered"
label variable intby      "Interviewed by"
label variable entmon     "Month questionnaire entered"
label variable entyear    "Year questionnaire entered"
label variable entby      "Name of person that entered data"
label variable penpartid  "Pen partner ID"

note intday : Q: Task: interview, Date?
note intmon : Q: Task: interview, Date?
note intyear : Q: Task: interview, Date?
note intby: Q: Task: interview, by who?
note entday : Q: Task: Entering data, Date?
note entmon : Q: Task: Entering data, Date?
note entyear: Q: Task: Entering data, Date?
note entby: Q: Task: Entering data, by who?


foreach var of varlist int* ent* penpartid {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_a_id.csv
}

include lab_miss.do

label values ent* int*  just_miss_lb

label values penpartid penpartid_lb      

compress

label data "Annual 2: control and identification"    

datasignature set, reset       
save processed/hhda2_a_id.dta, replace
         