cscript
import delimited hhda1_e_frb.csv, clear

label variable siteid           "Site ID"
label variable ghousecode       "Household ID"
label variable gvillcode        "Village ID"
label variable frb_h_kmdist     "Distance to nearest natural or managed forest in Kms"
label variable frb_h_mindist    "Distance to nearest natural or managed forest in minutes"
label variable frb_h_colfwd     "Does household collect firewood"
label variable frb_h_fwdcolhr   "Hours spent collecting firewood per week"
label variable frb_h_fwdtimecf  "Does hhd spend more or less time collecting firewood than 5 years ago"
label variable frb_h_fwdavail   "Has availability of firewood changed over the past five years"
label variable frb_h_respdecl1  "Response to forest resource decline Rank 1"
label variable frb_h_respdecl2  "Response to forest resource decline Rank 2"
label variable frb_h_respdecl3  "Response to forest resource decline Rank 3"
label variable frb_h_plantwdlts "Has household planted any woodlots over past 5 years"
label variable frb_h_whytres1   "Reason for planting trees Rank 1"
label variable frb_h_whytres2   "Reason for planting trees Rank 2"
label variable frb_h_whytres3   "Reason for planting trees Rank 3"

note frb_h_kmdist : Q: How far is it from the house/homestead to the edge of the nearest natural or managed forest that you have access to and can use? measured in terms of distance (straight line)?
note frb_h_mindist : Q: How far is it from the house/homestead to the edge of the nearest natural or managed forest that you have access to and can use? measured in terms of time (in minutes of walking)?
note frb_h_colfwd: Q: Does your household collect firewood?
note frb_h_fwdcolhr: Q: how many hours per week do the members of your household spend on collecting firewood for family use? (adult time should be reported; child time = 50 % of adult time)
note frb_h_fwdtimecf: Q: Does your household now spend more or less time on getting firewood than you did 5 years ago?
note frb_h_fwdavail: Q: How has availability of firewood changed over the past 5 years?
note frb_h_respdecl1: Q: If declined (code '1' on the question above), how has the household responded to the decline in the availability of firewood? Please rank the most important responses, max 3.
note frb_h_respdecl2: Q: If declined (code '1' on the question above), how has the household responded to the decline in the availability of firewood? Please rank the most important responses, max 3.
note frb_h_respdecl3: Q: If declined (code '1' on the question above), how has the household responded to the decline in the availability of firewood? Please rank the most important responses, max 3.
note frb_h_plantwdlts: Q: Has your household planted any woodlots or trees on farm over the past 5 years?
note frb_h_whytres1: Q: If yes: what are the main purpose(s) of the trees planted? Please rank the most important purposes, max 3.
note frb_h_whytres2: Q: If yes: what are the main purpose(s) of the trees planted? Please rank the most important purposes, max 3.
note frb_h_whytres3: Q: If yes: what are the main purpose(s) of the trees planted? Please rank the most important purposes, max 3.

foreach var of varlist frb_h* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : Source file: hhda1_e_frb.csv
}

include lab_miss.do

label values frb_h_kmdist frb_h_mindist frb_h_fwdcolhr just_miss_lb
label values frb_h_colfwd frb_h_plantwdlts yesno_lb
label define timecf_lb 1 "more" 2 "about the same" 3 "less" `miss_lb'
label values frb_h_fwdtimecf timecf_lb
label define avail_lb 1 "declined" 2 "about the same" 3 "increased" `miss_lb'
label values frb_h_fwdavail avail_lb
label define respdecl_lb 1 "Increased collection time (e.g., from further away from house)" ///
                         2 "Planting of trees on private land" ///
                         3 "Increased use of agricultural residues as fuel" ///
                         4 "Buying (more) fuelwood and/or charcoal" ///
                         5 "Buying (more) commercial fuels (kerosene, gas, or electricity)" ///
                         6 "Reduced the need for use of fuelwood for cooking and heating" ///
                         7 "More conservative use of fuelwood for cooking and heating" ///
                         8 "Reduced number of cooked meals" ///
                         9 "other" ///
                         10 "Use of improved technology" ///
                         11 "Increased use of non-wood wild products (ex. reeds)" ///
                         12 "Restricting access/use to own forest" ///
                         13 "Conserving standing trees for future" ///
                         14 "Making charcoal" ///
                         `miss_lb'
label values frb_h_respdecl1 frb_h_respdecl2 frb_h_respdecl3 respdecl_lb
label define whytres_lb 1 "Firewood for domestic use" ///
                        2 "Firewood for sale" ///
                        3 "Fodder for own use" ///
                        4 "Fodder for sale" ///
                        5 "Timber/poles for own use" ///
                        6 "Timber/poles for sale" ///
                        7 "Other domestic uses" ///
                        8 "Other products for sale" ///
                        9 "Carbon sequestration" ///
                        10 "Other environmental services" ///
                        11 "Land demarcation" ///
                        12 "To increase the value of my land" ///
                        13 "To allow my children and/or grandchildren to see these trees" ///
                        19 "Other" ///
                        `miss_lb'
label values frb_h_whytres1 frb_h_whytres2 frb_h_whytres3 whytres_lb

compress
label data "Annual 1: Forest resource base"
datasignature set, reset
save processed/hhda1_e_frb.dta, replace                        
