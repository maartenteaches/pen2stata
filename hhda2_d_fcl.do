cscript
import delimited hhda2_d_fcl.csv

label variable siteid      "Site ID"
label variable ghousecode  "Household ID"
label variable gvillcode   "Village ID"
label variable fcl_clear   "Did the household clear any forest land in past 12 mnths?"
label variable fcl_area    "How much forest was cleared? (ha)"
label variable fcl_use1    "What was the cleared forest used for 1"
label variable fcl_use2    "What was the cleared forest used for 2"
label variable fcl_use3    "What was the cleared forest used for 3"
label variable fcl_pcrop1  "If used for crop, principal crop 1"
label variable fcl_pcrop2  "If used for crop, principal crop 2"
label variable fcl_pcrop3  "If used for crop, principal crop 3"
label variable fcl_type    "Type of forest cleared?"
label variable fcl_agesec  "If secondary forest, age of forest"
label variable fcl_tenu    "Ownership status of the forest cleared"
label variable fcl_loc     "How far from house was the cleared land located"
label variable fcl_cllast5 "Has the household cleared forest over the last 5 years"
label variable fcl_clarea  "If yes, how much land has been cleared"
label variable fcl_abnd    "How much land has been left abandoned over last 5 years?"

note fcl_clear: Q: Did the household clear any forest during the past 12 months?
note fcl_area: Q: How much forest was cleared? (ha)
note fcl_use1: Q: What was the cleared forest (land) used for? Rank max 3
note fcl_use2: Q: What was the cleared forest (land) used for? Rank max 3
note fcl_use3: Q: What was the cleared forest (land) used for? Rank max 3
note fcl_pcrop1: Q: If used for crops (code '1' in question above), which principal crop was grown? Rank, max 3
note fcl_pcrop2: Q: If used for crops (code '1' in question above), which principal crop was grown? Rank, max 3
note fcl_pcrop3: Q: If used for crops (code '1' in question above), which principal crop was grown? Rank, max 3
note fcl_type: Q: What type of forest did you clear?
note fcl_agesec: Q: If secondary forest, what was the age of the forest? (years)
note fcl_tenu: Q: What was the ownership status of the forest cleared?
note fcl_loc: Q: How far from the house was the forest cleared located? (km)
note fcl_cllast5: Q: Has the household over the last 5 years cleared forest?
note fcl_clarea: Q: If 'yes': how much forest (approx.) has been cleared over the last 5 years? (ha) Note: This should include the area reported in question 2.
note fcl_abnd: Q: How much land used by the household has over the last 5 years been abandoned (left to convert to natural re-vegetation)? (ha)

foreach var of varlist fcl* {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_d_fcl.csv
}

include lab_miss.do

label values fcl_clear fcl_cllast5 yesno_lb
label values fcl_area fcl_agesec fcl_loc fcl_clarea fcl_abnd just_miss_lb
label define use_lb 1 "cropping" ///
                    2 "tree plantation" ///
                    3 "pasture" ///
                    4 "non-agraric uses" ///
                    `miss_lb'
label values fcl_use1 fcl_use2 fcl_use3 use_lb
label values fcl_pcrop1 fcl_pcrop2 fcl_pcrop3 code_product
label values fcl_type forest_lb
label values fcl_tenu tenur_lb
               
compress               
label data "Annual 2: Forest clearing"   
datasignature set, reset

save processed/hhda2_d_fcl.dta, replace
