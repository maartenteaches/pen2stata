cscript
import delimited "v1_d3_mgt.csv", clear

label var siteid    "Site ID"
label var gvillcode "Village ID"
label var mgt_type  "Type of management"
label var mgt_code  "Management code"

note mgt_type  : Q: Does the village practice any form of active and deliberate forest management? Type of management
note mgt_code  : Q: Does the village practice any form of active and deliberate forest management? Management code

foreach var of varlist mgt* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_d3_mgt.csv
}

include lab_miss.do

label define mgt_type_lb 1 "Planting of trees" ///
                         2 "Cutting down undesired (competing) trees" ///
                         3 "Protecting certain desired (patches of) trees in the forest to promote the natural regeneration of these species" ///
                         4 "Protecting areas of forest for particular environmental services, like water catchment" ///
                         5 "Establishing clear use rights for a limited number of people to particular forest products (e.g., honey trees)" ///
                         6 "Extension/education about forest management" ///
                         7 "Enacted bylaw (e.g., no bush burning in or near forest)" ///
                         8 "Mapping/inventory forest resources (e.g. mapping Brazil nut stands)" ///
                         9 "Other, specify:" ///
                         `miss_lb' 
label define mgt_code_lb 0 "no, not at all" ///
                         1 "yes, but only to a limited extent" ///
                         2 "yes, they are common" ///
                         `miss_lb'

label values mgt_type mgt_type_lb
label values mgt_code mgt_code_lb

compress
label data "Village 1: Forest and land cover/use"
datasignature set, reset
save processed/v1_d3_mgt.dta, replace                         