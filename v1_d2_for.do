cscript
import delimited "v1_d2_for.csv", clear

label var siteid      "Site ID"
label var gvillcode   "Village ID"
label var for_v_type  "Type of forest"
label var for_v_tenu  "Ownership"
label var for_v_area  "Approximate area"
label var for_v_user1 "Main users rank 1"
label var for_v_user2 "Main users rank 2"
label var for_v_user3 "Main users rank 3"
label var for_v_pdt1  "Main product rank 1"
label var for_v_pdt2  "Main product rank 2"
label var for_v_pdt3  "Main product rank 3"

note for_v_type  : Q: What are the main forest types, users and products in the village? Type of forest
note for_v_tenu  : Q: What are the main forest types, users and products in the village? Ownership
note for_v_area  : Q: What are the main forest types, users and products in the village? Approximate area
note for_v_user1 : Q: What are the main forest types, users and products in the village? Main users rank 1
note for_v_user2 : Q: What are the main forest types, users and products in the village? Main users rank 2
note for_v_user3 : Q: What are the main forest types, users and products in the village? Main users rank 3
note for_v_pdt1  : Q: What are the main forest types, users and products in the village? Main product rank 1
note for_v_pdt2  : Q: What are the main forest types, users and products in the village? Main product rank 2
note for_v_pdt3  : Q: What are the main forest types, users and products in the village? Main product rank 3

foreach var of varlist for* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_d2_for.csv
}

include lab_miss.do
label values for_v_type forest_lb
label values for_v_tenu tenur_lb
label values for_v_area just_miss_lb
label define user_lb 1 "villagers that are members of FUG" ///
                     2 "villagers not members of FUG" ///
                     3 "subsistence oriented users in the village" ///
                     4 "small-scale commercial users in the village" ///
                     5 "large-scale commercial users in the village" ///
                     6 "subsistence oriented users from outside the village" ///
                     7 "small-scale commercial users from outside the village" ///
                     8 "large-scale commercial users from outside the village" ///
                     9 "other, specify" ///
                     `miss_lb'
label values for_v_user* user_lb             
label values for_v_pdt* code_product


compress
label data "Village 1: Forest and land cover/use"
datasignature set, reset
save processed/v1_d2_for.dta, replace

        