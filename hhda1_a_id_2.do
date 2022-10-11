cscript

import delimited "hhda1_a_id_2.csv", clear

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var intday     "Day of interview (number)"
label var intmon     "Month of interview (number)"
label var intyear    "Year of interview"
label var intby      "Interviewed by"
label var entday     "Day questionnaire entered"
label var entmon     "Month questionnaire entered"
label var entyear    "Year questionnaire entered"
label var entby      "Name of person that entered data"
label var mindist    "Distance to village center in Mins"
label var kmdist     "Distance to village center in Kms"
label var penpartid  "Pen partner ID"
label var elevation  "Elevation im meter"


note intday : Q: interview: date
note intmon : Q: interview: date
note intyear : Q: interview: date
note intby : Q: interview: by who
note entday : Q: Entering data: date
note entmon : Q: Entering data: date
note entyear : Q: Entering data: date
note entby: Q: Entering data: by who
note mindist: Q: Distance of the household from the centre of village
note kmdist: Q: Distance of the household from the centre of village
note penpartid : Q: generated
note elevation: Q: generated

foreach var of varlist int* ent* mindist kmdist penpartid elevation {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : source file: hhda1_a_id_2.csv
}

include lab_miss.do

label values entday entmon mindist kmdist elevation just_miss_lb

compress
label data "Annual 1: control and identification"
datasignature set, reset
save processed/hhda1_a_id_2, replace
