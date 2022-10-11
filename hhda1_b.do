cscript
import delimited "hhda1_b.csv", clear

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var hhc_maristat "Marital Status"
label var hhc_formed   "How long ago was household formed (years)"
label var hhc_born     "Was HHead born in Village"
label var hhc_hdlong   "If Head not born in Village, how long has he been in village (years)"
label var hhc_hdethnic "Does household head belong to the largest ethnic group/caste in village"

note hhc_maristat : Q: What is the marital status of household head?
note hhc_formed : Q: How long ago was this household formed?
note hhc_born : Q: Was the household head born in this village?
note hhc_hdlong: Q: If "no" on hhc_born: how long has the household head lived in the village?
note hhc_hdethnic: Q: Does the household head belong to the largest ethnic group/caste in the village?

foreach var of varlist hhc* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : source file: hhda1_b.csv
}

include lab_miss.do
label define hhc_maristat_lb 1 "married and living together" ///
                             2 "married but spouse working away" ///
                             3 "widow/widower" ///
                             4 "divorced" ///
                             5 "never married" ///
                             9 "other" ///
                             `miss_lab'
label values hhc_maristat hhc_maristat_lb
label values hhc_born hhc_hdethnic yesno_lb
label values hhc_hdlong hhc_formed just_miss_lb

compress
label data "Annual 1: head of household"
datasignature set, reset
save processed/hhda1_b.dta, replace

