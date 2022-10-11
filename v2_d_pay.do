cscript
import delimited "v2_d_pay.csv", clear

label var siteid    "Site ID"
label var gvillcode "Village ID"
label var fs_pay    "Payment related to"
label var fs_amt    "Amount received"

note fs_pay    : Q: If the village has received payment, please indicate the amount the village has received: Payment related to
note fs_amt    : Q: If the village has received payment, please indicate the amount the village has received: Amount received

foreach var of varlist fs* {
    note `var' : Source: Village survey 2
   	note `var' : source file: v2_d_pay.csv
}
include lab_miss.do

label define fs_pay_lb ///
1 "Tourism" ///
2 "Carbon sequestration" ///
3 "Water catchment" ///
4 "Biodiversity conservation" ///
5 "Compensation from timber company" ///
6 "Compensation from mining company" ///
7 "Tree planting/afforestation" ///
9 "Other, specify:" ///
`miss_lb'
label values fs_pay fs_pay_lb
label values fs_amt just_miss_lb

compress
label data "Village 2: Forest services"
datasignature set, reset
save processed/v2_d_pay.dta, replace
