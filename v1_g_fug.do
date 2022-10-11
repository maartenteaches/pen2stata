cscript
import delimited "v1_g_fug.csv", clear 

label var siteid        "Site ID"
label var gvillcode     "Village ID"
label var fug_v_num     "fug"
label var fug_v_year    "When was the group formed"
label var fug_v_form    "How was the group formed?"
label var fug_v_purp    "Is the FUG's main purpose related to the management of a particular forest area"
label var fug_v_pdt     "If for a forest product, what is the (main) product?"
label var fug_v_mem     "How many members are there in the group?"
label var fug_v_mtg     "How many times per year does the FUG have meetings?"
label var fug_v_plan    "Does the group have a written management plan?"
label var fug_v_setrule "Setting rules for use"
label var fug_v_police  "Monitoring and policing"
label var fug_v_silvi   "Silviculture and management"
label var fug_v_harv    "Harvesting forest products"
label var fug_v_sell    "Selling forest products"
label var fug_v_othtask "Specify other"
label var fug_v_other   "Other"
label var fug_v_proj    "Has any development project been implemented in the village over the past 5 year"
label var fug_v_viol    "Has anyone in the village been violating the rules of the FUG over the past 12"
label var fug_v_penal   "Did the FUG impose any penalties on those violating the rules?"
label var fug_v_typpen  "What type of penalties?"
label var fug_v_gpviol  "Which group of forest users have most commonly been violating the rules over the"
label var fug_v_effect  "How effective is FUG in ensuring sustainable and equitable forest use?"

note fug_v_num     : Q: fug
note fug_v_year    : Q: When was the group formed?
note fug_v_form    : Q: How was the group formed?
note fug_v_purp    : Q: Is the FUG's main purpose related to the management of a particular forest area or of particular forest product(s)?
note fug_v_pdt     : Q: If for a forest product, what is the (main) product?
note fug_v_mem     : Q: How many members are there in the group?
note fug_v_mtg     : Q: How many times per year does the FUG have meetings?
note fug_v_plan    : Q: Does the group have a written management plan?
note fug_v_setrule : Q: main tasks of the FUG: Setting rules for use
note fug_v_police  : Q: main tasks of the FUG: Monitoring and policing
note fug_v_silvi   : Q: main tasks of the FUG: Silviculture and management
note fug_v_harv    : Q: main tasks of the FUG: Harvesting forest products
note fug_v_sell    : Q: main tasks of the FUG: Selling forest products
note fug_v_othtask : Q: main tasks of the FUG: Specify other
note fug_v_other   : Q: main tasks of the FUG: Other
note fug_v_proj    : Q: Has any development project been implemented in the village over the past 5 years using proceeds from the FUG?
note fug_v_viol    : Q: Has anyone in the village been violating the rules of the FUG over the past 12 months?
note fug_v_penal   : Q: Did the FUG impose any penalties on those violating the rules?
note fug_v_typpen  : Q: What type of penalties?
note fug_v_gpviol  : Q: Which group of forest users have most commonly been violating the rules over the past 5 years
note fug_v_effect  : Q: How effective is FUG in ensuring sustainable and equitable forest use?

foreach var of varlist fug* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_g_fug.csv
}

include lab_miss.do

label values fug_v_num fug_v_year fug_v_mem fug_v_mtg just_miss_lb
label define fug_form_lb 1 "local initiative" ///
                         2 "initiative from NGO" ///
                         3 "initiative from government, e.g., Forest Department" ///
                         4 "other, specify" ///
                         `miss_lb'
label values fug_v_form fug_form_lb                         
label define fug_purp_lb 1 "area" 2 "product(s)" 3 "both" `miss_lb'
label values fug_v_purp fug_purp_lb
label values fug_v_pdt code_product
label values fug_v_plan fug_v_setrule fug_v_police fug_v_silvi fug_v_harv ///
             fug_v_sell fug_v_othtask fug_v_other fug_v_proj fug_v_viol   ///
             fug_v_penal yesno_lb
label define fug_typpen_lb 1 "fee (cash payment)" ///
                           2 "returning collected products" ///
                           3 "labour (extra work)" ///
                           4 "exclusion from group" ///
                           5 "warning" ///
                           9 "other, specify" ///
                           `miss_lb'
label values fug_v_typpen fug_typpen_lb
label define fug_gpviol_lb 1 "members of FUG" ///
                           2 "non-FUG members in the village" ///
                           3 "people from other villages" ///
                           9 "other, specify" ///
                           `miss_lb'
label values fug_v_gpviol fug_gpviol_lb
label define fug_effect_lb 1 "highest" 5 "lowest" `miss_lb'
label values fug_v_effect fug_effect_lb


compress
label data "Village 1: Forest user groups (FUG)"
datasignature set, reset
save processed/v1_g_fug.dta, replace