cscript
import delimited "v1_a_geo.csv", clear

label var siteid    "Site ID"
label var gvillcode "Village ID"
label var offyr     "Year meetings with officials held"
label var offmon    "Month meetings with officials held"
label var offday    "Day meetings with officials held"
label var offby     "Meeting with officials by"
label var fgyr      "Year Village/ focus group meetings held"
label var fgmon     "Month Village/ focus group meetings held"
label var fgday     "Day Village/ focus group meetings held"
label var fgby      "Village/ focus group meeting by"
label var intyear   "Year of other interviews"
label var intmon    "Month of other interviews"
label var intday    "Day of other interviews"
label var intby     "Interviewed by"
label var entyear   "Year questionnaire entered"
label var entmon    "Month questionnaire entered"
label var entday    "Day questionnaire entered"
label var entby     "Name of person that entered data"

note offyr     : Q: Year meetings with officials held
note offmon    : Q: Month meetings with officials held
note offday    : Q: Day meetings with officials held
note offby     : Q: Meeting with officials by
note fgyr      : Q: Year Village/ focus group meetings held
note fgmon     : Q: Month Village/ focus group meetings held
note fgday     : Q: Day Village/ focus group meetings held
note fgby      : Q: Village/ focus group meeting by
note intyear   : Q: Year of other interviews
note intmon    : Q: Month of other interviews
note intday    : Q: Day of other interviews
note intby     : Q: Interviewed by
note entyear   : Q: Year questionnaire entered
note entmon    : Q: Month questionnaire entered
note entday    : Q: Day questionnaire entered
note entby     : Q: Name of person that entered data

foreach var of varlist off* fg* int* ent* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_a_geo.csv
}

include lab_miss.do
label values off* fg* int* ent* just_miss_lb

compress
label data "Village 1: control information"
datasignature set, reset
save processed/v1_a_geo.dta, replace
