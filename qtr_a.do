cscript
import delimited qtr_a.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var intday     "Day of interview (number)"
label var intmon     "Month of interview (number)"
label var intyear    "Year of interview"
label var intby      "Interviewed by"
label var chkday     "Day questionnaire checked"
label var chkmon     "Month questionnaire checked"
label var chkyear    "Year questionnaire checked"
label var chkby      "Checked by"
label var entday     "Day questionnaire entered"
label var entmon     "Month questionnaire entered"
label var entyear    "Year questionnaire entered"
label var entby      "Name of person that entered data"
label var villcode   "Village code"
label var distcode   "District code"
label var pid1       "PID of primary respondent"
label var pid2       "PID of secondary respondent"
label var penpartid  "Pen partner ID"

note intday: Q: Interview: date: day
note intmon: Q: Interview: date: month
note intyear: Q: Interview: date: year
note intby: Q: Interview: by who
note chkday: Q:  Checking questionaire: date: day
note chkmon: Q:  Checking questionaire: date: month
note chkyear: Q: Checking questionaire: date: year
note chkby: Q: Checking questionaire: by who
note entday: Q:  Entering data: date: day
note entmon: Q:  Entering data: date: month
note entyear: Q: Entering data: date: year
note entby: Q: Entering data: by who
note villcode: Q: Indentification of the household: Village name and code
note distcode: Q: Indentification of the household: District name and code
note pid1: Q: Indentification of the household: Name and PID of primary respondent
note pid2: Q: Indentification of the household: Name and PID of secondary respondent
note penpartid: Q: Pen partner ID

foreach var of varlist int* chk* ent* villcode distcode pid* penpartid {
    note `var' : Source: Quarterly surveys
   	note `var' : Source file: qtr_a.csv
}

include lab_miss.do
label values intday-pid2 just_miss_lb
label values penpartid penpartid_lb      

compress

label data "Quarterly: control and identification"    

datasignature set, reset       
save processed/qtr_a.dta, replace
         