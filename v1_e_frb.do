cscript
import delimited "v1_e_frb.csv", clear

label var siteid       "Site ID"
label var gvillcode    "Village ID"
label var frb_v_cat    "Forest resource base category"
label var frb_v_mip    "Most important product in category"
label var frb_v_mipchg "Has availability of MIP changed over past 5 years"
label var frb_v_decl1  "Rank 1 reason for decline in availability of MIP"
label var frb_v_decl2  "Rank 2 reason for decline in availability of MIP"
label var frb_v_decl3  "Rank 3 reason for decline in availability of MIP"
label var frb_v_incr1  "Rank 1 reason for increase in availability of MIP"
label var frb_v_incr2  "Rank 2 reason for increase in availability of MIP"
label var frb_v_incr3  "Rank 3 reason for increase in availability of MIP"
label var frb_v_act1   "Rank 1 action to increase benefits from MIP"
label var frb_v_act2   "Rank 2 action to increase benefits from MIP"
label var frb_v_act3   "Rank 2 action to increase benefits from MIP"

note frb_v_cat    : Q: Forest resource base category
note frb_v_mip    : Q: What is the most important product (MIP) for the livelihood of the people in the village (in this category)?
note frb_v_mipchg : Q: Has availability of MIP changed over past 5 years
note frb_v_decl1  : Q: Rank 1 reason for decline in availability of MIP
note frb_v_decl2  : Q: Rank 2 reason for decline in availability of MIP
note frb_v_decl3  : Q: Rank 3 reason for decline in availability of MIP
note frb_v_incr1  : Q: Rank 1 reason for increase in availability of MIP
note frb_v_incr2  : Q: Rank 2 reason for increase in availability of MIP
note frb_v_incr3  : Q: Rank 3 reason for increase in availability of MIP
note frb_v_act1   : Q: Rank 1 What would be most important to increase the benefits (use or income) from the MIP?
note frb_v_act2   : Q: Rank 2 What would be most important to increase the benefits (use or income) from the MIP?
note frb_v_act3   : Q: Rank 2 What would be most important to increase the benefits (use or income) from the MIP?

foreach var of varlist frb* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_e_frb.csv
}

include lab_miss.do
lab define frb_cat_lb 1 "Firewood or charcoal" ///
                      2 "Timber or other wood" ///
                      3 "Food from the forest" ///
                      4 "Medicine from the forest" ///
                      5 "Forage from the forest" ///
                      6 "Other" ///
                      `miss_lb'
label values frb_v_cat frb_cat_lb     
label values frb_v_mip code_product   
label define frb_mipchg_lb 1 "declined" 2 "about the same" 3 "increased" `miss_lb'
label values frb_v_mipchg  frb_mipchg_lb  

label define frb_decl_lb 1  "Reduced forest area due to small-scale clearing for agriculture" ///
                         2  "Reduced forest area due to large-scale projects (plantations, new settlements, etc.)" ///
                         3  "Reduced forest area due to people from outside buying land and restricting access" ///
                         4  "Increased use of MIP due to more local (village) people collecting more" ///
                         5  "Increased use of MIP due to more people from other villages collecting more" ///
                         6  "Restrictions on use by central or state government (e.g., for forest conservation)" ///
                         7  "Local restrictions on forest use (e.g., community rules)" ///
                         8  "Climatic changes, e.g., drought and less rainfall " ///
                         9  "Other, specify:" ///
                         10 "Timber harvesting" ///
                         11 "Charcoal burning" ///
                         12 "Brick burning" ///
                         13 "Poor harvesting practices" ///
                         14 "Product attacked/consumed by forest dwelling vermin" ///
                         15 "Bush burning" ///
                         16 "Increased marketing potential for product" ///
                         `miss_lb'
label values frb_v_decl* frb_decl_lb                         

label define frb_incr_lb 1  "Less clearing of forests for agriculture (incl. pastoralism)" ///
                         2  "Fewer local (village) people collecting less" ///
                         3  "Fewer people from other villages collecting less" ///
                         4  "Reduced use from large-scale commercial users/projects" ///
                         5  "Changes in management of forests" ///
                         6  "Climatic changes, e.g., more rainfall" ///
                         7  "Forest clearing that increases supply of product (e.g. fuelwood)" ///
                         8  "Tree planting" ///
                         9  "Other, specify:" ///
                         10 "More illegal access of protected area" ///
                         11 "Improved access rights to product" ///
                         12 "More secondary forest (as people clear land and forest regenerates)" ///
                         `miss_lb'
label values frb_v_incr* frb_incr_lb                         

label define frb_act_lb 1 "Better access to the forest/MIP, i.e., more use rights to village" ///
                        2 "Better protection of forest/MIP (avoid overuse)" ///
                        3 "Better skills and knowledge on how to collect/use it" ///
                        4 "Better access to credit/capital and equipment/technology" ///
                        5 "Better access to markets and reduced price risk" ///
                        6 "Invest in planting trees/forest product" ///
                        7 "Develop forest user groups/collective action in harvesting" ///
                        8 "Control fire " ///
                        9 "Other, specify:" ///
                        `miss_lb'
label values frb_v_act* frb_act_lb                        

compress
label data "Village 1: Forest resource base"
datasignature set, reset
save processed/v1_e_frb.dta, replace
