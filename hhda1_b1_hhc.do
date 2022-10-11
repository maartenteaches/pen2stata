cscript
import delimited "hhda1_b1_hhc", clear

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var hhc_pid    "Household member PID"
label var hhc_rela   "Relation to Household head"
label var hhc_yrborn "Year Born"
label var hhc_sex    "Sex of Member"
label var hhc_educ   "Number of years completed"

note hhc_rela   : Who are the members of the household? Relation to household head. 
note hhc_yrborn : Who are the members of the household? Year born. 
note hhc_sex    : Who are the members of the household? Sex.  
note hhc_educ   : Who are the members of the household? Education: number of years completed.  

foreach var of varlist hhc_rela - hhc_educ {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : source file: hhda1_b1_hhc.csv
}

include lab_miss.do

label define rela_lb 0  "head"                                     ///
                     1  "spouse (legally married or cahabitating)" ///
                     2  "son/daughter"                             ///
                     3  "son/daughter in law"                      ///
                     9  "uncle/aunt"                               ///
                     4  "grandchild"                               ///
                     5  "mother/father"                            ///
                     6  "mother/father in law"                     ///
                     7  "brother/sister"                           ///
                     8  "brother/sister in law"                    ///
                     10 "nephew/niece"                             ///
                     11 "step/foster child"                        ///
                     12 "other family"                             ///
                     13 "not related (e.g., servant)"              ///
                     `miss_lb'
label values hhc_rela rela_lb                     
                  
label define sex_lb 0 "male" 1 "female"
label values hhc_sex sex_lb

label values hhc_yrborn hhc_educ just_miss_lb

compress
label data "Annual 1: household composition"
datasignature set, reset
save processed/hhda1_b1_hhc.dta, replace

