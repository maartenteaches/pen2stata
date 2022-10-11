cscript
import delimited hhda2_b1_cue.csv

label var siteid        "Site ID"
label var ghousecode    "Household ID"
label var gvillcode     "Village ID"
label var cue_even      "Event"
label var cue_severity  "Severity of Event"
label var cue_costcope1 "How did you cope with income loss 1"
label var cue_costcope2 "How did you cope with income loss 2"
label var cue_costcope3 "How did you cope with income loss 3"
label var cue_costs     "Estimated income loss or costs"

note cue_even : Q: Has the household faced any major income shortfalls or unexpectedly large expenditures during the past 12 months?
note cue_severity: Q: How severe
note cue_costcope1: Q: How did you cope with the income loss or costs? Rank max. 3
note cue_costcope2: Q: How did you cope with the income loss or costs? Rank max. 3
note cue_costcope3: Q: How did you cope with the income loss or costs? Rank max. 3
note cue_costs: Q: not part of the official survey

foreach var of varlist cue* {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_b1_cue.csv
}

include lab_miss.do

label define even_lb 1 "Serious crop failure" ///
                     2 "Serious illness in family (productive age-group adult unable to work for more than one month during past 12 months, due to illness, or to taking care of ill person; or high medical costs)" ///
                     3 "Death of productive age-group adult" ///
                     4 "Land loss (expropriation, etc.)" ///
                     5 "Major livestock loss (theft, drought, etc.)" ///
                     6 "Other major asset loss (fire, theft, flood, etc.)" ///
                     7 "Lost wage employment" ///
                     8 "Wedding or other costly social events" ///
                     9 "other" ///
                     10 "Payment for sale of hh products arrive later than expected" ///
                     11 "Delayed income from forest products" ///
                     12 "Fine from environmental regulation agency" ///
                     `miss_lb'
label values cue_even even_lb

label define severity_lb 0 "no crisis" ///
                         1 "yes, moderate crisis" ///
                         2 "yes, severe crisis" ///
                         3 "yes, severe crisis" ///
                         `miss_lb'
label values cue_severity severity_lb

label define cope_lb 1  "Harvest more forest products" ///
                     2  "Harvest more wild products not in the forest" ///
                     3  "Harvest more agricultural products" ///
                     4  "Spend cash savings" ///
                     5  "Sell assets (land, livestock, etc.)" ///
                     6  "Do extra casual labour work" ///
                     7  "Assistance from friends and relatives" ///
                     8  "Assistance from NGO, community org., religious org. or similar" ///
                     9  "Get loan from money lender, credit association, bank etc." ///
                     10 "Tried to reduce household spending" ///
                     11 "Did nothing in particular" ///
                     12 "Spent savings / retirement money" ///
                     13 "Reduced number of meals taken" ///
                     14 "Borrowed against future earnings" ///
                     15 "Sold food that would otherwise be used for household consumption" ///
                     16 "Rented out land" ///
                     17 "Started new business" ///
                     18 "Changed to different type of livestock" ///
                     19 "Other, specify:" ///
                     20 "Harvested premature crops." ///
                     21 "Changed cropping patterns or types of crops planted" ///
                     `miss_lb'
label values cue_costcope1 cue_costcope2 cue_costcope3 cope_lb 
label values cue_costs just_miss_lb                    
       
compress

label data "Annual 2: Crisis and unexpected expenditures"    

datasignature set, reset       
save processed/hhda2_b1_cue.dta, replace
                