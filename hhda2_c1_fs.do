cscript
import delimited hhda2_c1_fs.csv

order siteid ghousecode gvillcode

label variable siteid       "Site ID"
label variable ghousecode   "Household ID"
label variable gvillcode    "Village ID"
label variable fs_h_purpose "Principal service"
label variable fs_h_rec     "Have recieved?"
label variable fs_h_amt     "If yes, amount received"

note fs_h_purpose: Q: Has the household over the past 12 months received any cash or in kind payments related to the following forest services? Principle purpose
note fs_h_rec: Q: Has the household over the past 12 months received any cash or in kind payments related to the following forest services? Have received?
note fs_h_amt: Q: Has the household over the past 12 months received any cash or in kind payments related to the following forest services? If yes, amounts (values) received (Lc\$) (if nothing, put '0')

foreach var of varlist fs* {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_c1_fs.csv
}

include lab_miss.do

label define purpose_lb 1 "Tourism" ///
                        2 "Carbon projects" ///
                        3 "Water catchments porjects" ///
                        4 "Biodiversity conservation" ///
                        5 "Others" ///
                        6 "Tree planting" ///
                        7 "Timber concessions" ///
                        `miss_lb'
label values fs_h_purpose purpose_lb                        
label values fs_h_rec yesno_lb
label values fs_h_amt just_miss_lb
      
compress

label data "Annual 2: Forest services"    

datasignature set, reset       
save processed/hhda2_c1_fs.dta, replace
                
