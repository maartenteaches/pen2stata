cscript
import delimited "v1_f_fi.csv", clear 

label var siteid     "Site ID"
label var gvillcode  "Village ID"
label var fi_cat     "Forest institutions category"
label var fi_mip     "Most important product in category"
label var fi_for     "In what type of forest do you get the MIP?"
label var fi_tenu    "What is the ownership status of this forest"
label var fi_crules  "Are there customary rules regulating the use of the MIP in the village"
label var fi_cenfor  "Are the customary rules regarding forest use enforced/ respected by the populati"
label var fi_grules  "Are there governement rules that regulate forest use?"
label var fi_genfor  "Are the government rules enforced/ respected by the members in the village?"
label var fi_reqperm "Do the villagers require any permission to harvest the MIP?"
label var fi_payperm "Does the user have to pay for the permission?"
label var fi_whoperm "Who issues this permit?"

note fi_cat     : Q: Forest institutions category
note fi_mip     : Q: What is the most important product (MIP) for the livelihood of the people in the village (in this category)?
note fi_for     : Q: In what type of forest do you get the MIP?
note fi_tenu    : Q: What is the ownership status of this forest
note fi_crules  : Q: Are there customary rules regulating the use of the MIP in the village
note fi_cenfor  : Q: Are the customary rules regarding forest use enforced/ respected by the population of the village?
note fi_grules  : Q: Are there governement rules that regulate forest use?
note fi_genfor  : Q: Are the government rules enforced/ respected by the members in the village?
note fi_reqperm : Q: Do the villagers require any permission to harvest the MIP?
note fi_payperm : Q: Does the user have to pay for the permission?
note fi_whoperm : Q: Who issues this permit?

foreach var of varlist fi* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_f_fi.csv
}

include lab_miss.do
lab define fi_cat_lb 1 "Firewood or charcoal" ///
                     2 "Timber or other wood" ///
                     3 "Food from the forest" ///
                     4 "Medicine from the forest" ///
                     5 "Forage from the forest" ///
                     6 "Other" ///
                     `miss_lb'
label values fi_cat fi_cat_lb                     
label values fi_mip code_product
label values fi_for forest_lb
label values fi_tenu tenur_lb
label define rules_lb 0 "none/very few" ///
                      1 "yes, but vague/unclear" ///
                      2 "yes, clear rules exist" ///
                      `miss_lb'
label values fi_crules fi_grules rules_lb
label define enfor_lb 0 "no/very little" ///
                      1 "to a certain extent by some groups of villagers" ///
                      2 "to a certain extent by everyone" ///
                      3 "yes, but only by some groups of villagers" ///
                      4 "yes, by everyone" ///
                      9 "no particular rules exist" ///
                      `miss_lb'
label values fi_cenfor fi_genfor enfor_lb
label define reqperm 0 "no" ///
                     1 "yes, users have to inform the authorities" ///
                     2 "yes, written permission needed" ///
                     `miss_lb'
label values fi_reqperm reqperm
label values fi_payperm yesno_lb 
label define whoperm 1 "village head" ///
                     2 "FUG" ///
                     3 "forest officer (forest departments)" ///
                     4 "other government official" ///
                     9 "other, specify" ///
                     `miss_lb'
label values fi_whoperm whoperm                     

compress
label data "Village 1: Forest institutions"
datasignature set, reset
save processed/v1_f_fi.dta, replace