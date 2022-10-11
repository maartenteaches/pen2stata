cscript
import delimited hhda2_f_enum.csv

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var enum_laugh   "Did the respondent smile or laugh"
label var enum_well    "How well off do you consider the household to be comapred to other households"
label var enum_rely    "Generally how reliable is the information provided by this household?"
label var enum_forcoll "How reliable is the information on forest collection provided by this household?"
label var enum_est     "Do you think the information overestimates or underestimates the actual forest u"

note enum_laugh : Q: During the last interview, did the respondent smile or laugh?
note enum_well: Q: Based on your impression and what you have seen (house, assets, etc.), how well-off do you consider this household to be compared with other households in the village?
note enum_rely: Q: How reliable is the information generally provided by this household?
note enum_forcoll: Q: How reliable is the information on forest collection/use provided by this household?
note enum_est: Q: If the forest information is not so reliable (code 1 above), do you think the information provided overestimate or underestimate the actual forest use?

foreach var of varlist enum* {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_f_enum.csv
}

include lab_miss.do

label define laugh_lb 1 "neither laughed nor smiled (somber)" ///
                      2 "only smiled"                         ///
                      3 "smiled and laughed"                  ///
                      4 "laughed openly and frequently"       ///
                      `miss_lb'
label values enum_laugh laugh_lb
label define well_lb 1 "worse-off" 2 "about average" 3 "better-off" `miss_lb'
label values enum_well well_lb
label define rely_lb 1 "poor" 2 "reasonably reliable" 3 "very reliable" `miss_lb'
label values enum_rely enum_forcoll rely_lb
label define est_lb 1 "underestimate" ///
                    2 "overestimate"  ///
                    3 "no systematic over- or underestimation" ///
                    4 "don't know'" ///
                    `miss_lb'
label values enum_est est_lb                    

compress
label data "Anual 2: Enumerator/researcher assessment of the household"
datasignature set, reset

save processed/hhda2_f_enum.dta, replace
