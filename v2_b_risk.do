cscript
import delimited "v2_b_risk.csv", clear

label var siteid       "Site ID"
label var gvillcode    "Village ID"
label var risk_v_type  "Crisis category"
label var risk_v_faced "Has the village faced crisis?"

note risk_v_type  : Q: Crisis category
note risk_v_faced : Q: Has the village faced crisis?

foreach var of varlist risk* {
    note `var' : Source: Village survey 2
   	note `var' : source file: v2_b_risk.csv
}

include lab_miss.do
label define risk_type_lb ///
1  "Flood and/or excess rain" ///
2  "Drought" ///
3  "Wild fire (in crops/ forest/grasslands etc)" ///
4  "Widespread crop pest/disease and/or animal disease" ///
5  "Human epidemics (disease)" ///
6  "Political/civil unrest" ///
7  "Macro-economic crisis" ///
8  "Refugee or migration infusion" ///
9  "Other, specify:" ///
10 "Wildlife predation on livestock" ///
11 "Conflicts over forest resources (theft)" ///
12 "Land conflicts within village" ///
13 "Bridge/road washed out" ///
14 "Harassment from forest officials" ///
`miss_lb'
label values risk_v_type risk_type_lb

label define risk_faced_lb 0 "no" ///
                           1 "yes, moderate crisis" ///
                           2 "yes, severe crisis"   ///
                           `miss_lb'
label values risk_v_faced risk_faced_lb                           

compress
label data "Village 2: risk"
datasignature set, reset
save processed/v2_b_risk.dta, replace