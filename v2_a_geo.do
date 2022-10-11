cscript
import delimited "v2_a_geo.csv", clear

label var siteid         "Site ID"
label var gvillcode      "Village ID"
label var offyr          "Year meetings with officials held"
label var offmon         "Month meetings with officials held"
label var offday         "Day meetings with officials held"
label var offby          "Meeting with officials by"
label var fgyr           "Year Village/ focus group meetings held"
label var fgmon          "Month Village/ focus group meetings held"
label var fgday          "Day Village/ focus group meetings held"
label var fgby           "Village/ focus group meeting by"
label var intyear        "Year of other interviews"
label var intmon         "Month of other interviews"
label var intday         "Day of other interviews"
label var intby          "Interviewed by"
label var entyear        "Year questionnaire entered"
label var entmon         "Month questionnaire entered"
label var entday         "Day questionnaire entered"
label var entby          "Name of person that entered data"
label var geo_v2_totrain "What was the total rainfall in the village for the past 12 months?"
label var geo_v2_chgrain "How was the rainfall past 12 months compared with a normal year?"
label var penpartid      "Pen partner ID"

note offyr          : Q: Year meetings with officials held
note offmon         : Q: Month meetings with officials held
note offday         : Q: Day meetings with officials held
note offby          : Q: Meeting with officials by
note fgyr           : Q: Year Village/ focus group meetings held
note fgmon          : Q: Month Village/ focus group meetings held
note fgday          : Q: Day Village/ focus group meetings held
note fgby           : Q: Village/ focus group meeting by
note intyear        : Q: Year of other interviews
note intmon         : Q: Month of other interviews
note intday         : Q: Day of other interviews
note intby          : Q: Interviewed by
note entyear        : Q: Year questionnaire entered
note entmon         : Q: Month questionnaire entered
note entday         : Q: Day questionnaire entered
note entby          : Q: Name of person that entered data
note geo_v2_totrain : Q: What was the total rainfall in the village for the past 12 months?
note geo_v2_chgrain : Q: If rainfall data not available: How was the rainfall past 12 months compared with a normal year?
note penpartid      : Q: Pen partner ID

foreach var of varlist off* fg* int* ent* geo* penpartid {
    note `var' : Source: Village survey 2
   	note `var' : source file: v2_a_geo.csv
}

include lab_miss.do
label values off* fg* int* ent* geo_v2_totrain just_miss_lb

label define v2_chgrain_lb 1 "well below normal (< 50 %)" ///
                           2 "below normal (50-90%)" ///
                           3 "normal (90-110%)" ///
                           4 "above normal (110-150%)" ///
                           5 "well above normal (> 150%)" ///
                           `miss_lb'
label values geo_v2_chgrain v2_chgrain_lb
                           

compress
label data "Village 2: control information"
datasignature set, reset
save processed/v2_a_geo.dta, replace
