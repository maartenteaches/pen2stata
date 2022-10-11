cscript
import delimited hhda1_d_asa.csv, clear

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var asa_ownhse   "Do you own a house"
label var asa_wallmat  "Wall material"
label var asa_floormat "Floor material"
label var asa_roofmat  "Roof Material"
label var imp_lead     "Did household own any implements?"
label var asa_hsearea  "Size of house in m^2"
label var asa_savbnks  "Savings in banks, credit associations, or savings clubs"
label var asa_savnpa   "Savings in Non productive assets eg gold"
label var asa_debt     "Outstanding Debt"

note asa_ownhse : Q: Do you have your own house?
note asa_wallmat: Q: What is the type of material of (most of) the walls?
note asa_roofmat: Q: What is the type of material of (most of) the roof ?
note imp_lead: Q: generated
note asa_hsearea: Q: How many m2 approx. is the house?
note asa_savbnks: Q: How much does the household have in savings in banks, credit associations or savings clubs?
note asa_savnpa: Q: How much does the household have in savings in non-productive assets such as gold and jewelry?
note asa_debt: Q: How much does the household have in outstanding debt?

foreach var of varlist asa* imp* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : Source file: hhda1_d_asa.csv
}

include lab_miss.do

label define asa_ownhse_lb 0 "no" ///
                           1 "own the house on their own" /// 
                           2 "own the house together with other household(s)" ///
                           3 "renting the house alone" ///
                           4 "renting the house with other household(s)" ///
                           9 "other, specify" ///
                           `miss_lb'                        
label value asa_ownhse asa_ownhse_lb

label define asa_wallmat_lb 1 "mud/soil" ///
                            2 "wooden (boards, trunks)" ///
                            3 "iron (or other metal) sheets" ///
                            4 "bricks or concrete" ///
                            5 "reeds/straw/grass/fibers/bamboo" ///
                            9 "other, specify" ///
                            `miss_lb'
label value asa_wallmat asa_wallmat_lb

label define asa_roofmat_lb 1 "thatch" ///
                            2 "wooden (boards)" ///
                            3 "iron or other metal sheets" ///
                            4 "tiles" ///
                            9 "other, specify" ///
                            `miss_lb'
label values asa_roofmat asa_roofmat_lb
                   
label values imp_lead yesno_lb
label values asa_hsearea asa_savbnks asa_savnpa asa_debt just_miss_lb                   
drop asa_floormat

compress
label data "Annual 1: Assets and savings"
datasignature set, reset
save processed/hhda1_d_asa.dta, replace
