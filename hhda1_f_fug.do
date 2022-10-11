cscript
import delimited hhda1_f_fug.csv

label variable siteid        "Site ID"
label variable ghousecode    "Household ID"
label variable gvillcode     "Village ID"
label variable fug_h_mem     "Does any household member belong to a FUG"
label variable fug_h_attnd   "Does any household member regulary attend a FUG"
label variable fug_h_whoatnd "Who regulary attends the FUG"
label variable fug_h_dayspnt "How many person days are spent on FUG activities"
label variable fug_h_payin   "Does household make any cash payments/contributions to the FUG"
label variable fug_h_hwmchto "How much was paid in last 12 months"
label variable fug_h_payfrm  "Did you recieve any payments from the FUG?"
label variable fug_h_hwmchfr "How would did you recieve in the last 12 months"
label variable fug_h_whyin1  "Why did you join FUG Rank 1"
label variable fug_h_whyin2  "Why did you join FUG Rank 2"
label variable fug_h_whyin3  "Why did you join FUG Rank 3"
label variable fug_h_benfts  "How would you say FUG has affected benefits from forest"
label variable fug_h_whyno1  "Why dont participate in FUG Rank 1"
label variable fug_h_whyno2  "Why dont participate in FUG Rank 2"
label variable fug_h_whyno3  "Why dont participate in FUG Rank 3"

note fug_h_mem : Q: Are you or any member of your household a member of a Forest User Group (FUG)?
note fug_h_attnd: Q: Does someone in your household normally/regularly attend the FUG meetings?
note fug_h_whoatnd: Q: If 'yes': in your household, who normally attends FUG meetings and participates in other FUG activities?
note fug_h_dayspnt: Q: How many person days (= full working days) did the household members spend in total on FUG activities (meetings, policing, joint work, etc) over the past 12 months?
note fug_h_payin: Q: Does your household make any cash payments/contributions to the FUG?
note fug_h_hwmchto: Q: If 'yes': how much did you pay in the past 12 months? (Lc$)
note fug_h_payfrm: Q: Did your household receive any cash payments from the FUG (e.g., share of sales) in the past 12 months?
note fug_h_hwmchfr: Q: If 'yes': how much did you receive in the past 12 months? (Lc$)
note fug_h_whyin1: Q: What are your reasons for joining the FUG? Please rank the most important reasons, max 3.
note fug_h_whyin2: Q: What are your reasons for joining the FUG? Please rank the most important reasons, max 3.
note fug_h_whyin3: Q: What are your reasons for joining the FUG? Please rank the most important reasons, max 3.
note fug_h_benfts: Q: Overall, how would you say the existence of the FUG has affected the benefits that the household gets from the forest?
note fug_h_whyno1: Q: If you don't participate in FUG, why? Please rank the most important reasons, max 3
note fug_h_whyno2: Q: If you don't participate in FUG, why? Please rank the most important reasons, max 3
note fug_h_whyno3: Q: If you don't participate in FUG, why? Please rank the most important reasons, max 3

foreach var of varlist fug_h* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : Source file: hhda1_f_fug.csv
}

include lab_miss.do

label values fug_h_mem fug_h_attnd fug_h_payin fug_h_payfrm yesno_lb
label define whoatnd_lb 1 "only the wife" ///
                        2 "both, but mainly the wife" ///
                        3 "both participate about equally" ///
                        4 "both, but mainly the husband" ///
                        5 "only the husband" ///
                        6 "mainly son(s)" ///
                        7 "mainly daughter(s)" ///
                        8 "mainly husband & son(s)" ///
                        10 "mainly wife & daughter(s)" ///
                        9 "other arrangements not described above" ///
                        `miss_lb'
label values fug_h_whoatnd whoatnd_lb    
label values fug_h_dayspnt fug_h_hwmchto fug_h_hwmchfr just_miss_lb   
label define whyin_lb 1 "increased access to forest products" ///
                      2 "Better forest management and more benefits in future" ///
                      3 "Acess to other benefits, e.g. government support or donor programs" ///
                      4 "My duty to protect the forest for the community and the future" ///
                      5 "Being respected and regarded as a responsible person in village" ///
                      6 "Social aspect (meeting people, working together, fear of exclusion, etc.)" ///
                      7 "Forced by Government/chiefs/neighbours" ///
                      8 "Higher price for forest products" ///
                      10 "Better quality of forest products" ///
                      11 "Receipt of direct payments" ///
                      12 "Makes harvest of forest products more efficient" ///
                      13 "Know forest resource better (e.g. # Brazil nut trees)" ///
                      14 "Learn new skills/information" ///
                      15 "Reduce conflicts over resource" ///
                      16 "More secure land title" ///
                      9 "Other" ///
                      `miss_lb'
label values fug_h_whyin1 fug_h_whyin2 fug_h_whyin3 whyin_lb
label define benfts_lb 1 "large negative effect" ///
                       2 "small negative effect" ///
                       3 "no effect" ///
                       4 "small positive effect" ///
                       5 "large positive effect" ///
                       `miss_lb'
label values fug_h_benfts benfts_lb
label define whyno_lb 1 "No FUG exists in the village" ///
                      2 "I'm new in the village" ///
                      3 "FUG members generally belong to ther group(s) (ethnic, political party, religion, age, etc.) than I do" ///
                      4 "Cannot afford to contribute time" ///
                      5 "Cannot affort to contribute the required cash payment" ///
                      6 "FUG membership will restrict my use of the forest, and I want to use the forest as I need it" ///
                      7 "I don't believe FUG is very effective in managing the forest" ///
                      8 "Lack of forest products" ///
                      10 "Not interested in the activities undertaken by existing FUGs" ///
                      11 "Corruption in FUG" ///
                      12 "Interested in joining but needs more information" ///
                      13 "FUG exists in village, but household is unaware of its presence" ///
                      14 "Forest authorities" ///
                      9 "other" ///
                      `miss_lb'
label values fug_h_whyno1 fug_h_whyno2 fug_h_whyno3 whyno_lb

compress

label data "Annual 1: Forest User Groups"
datasignature set, reset
save processed/hhda1_f_fug.dta, replace
