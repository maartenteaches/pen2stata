cscript
import delimited "hhda1_c1_land.csv", clear

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var land_h_cat     "Land category"
label var land_h_catarea "Area (ha)"
label var land_h_cattenu "Ownership"
label var land_h_crop1   "Main Crop Rank 1"
label var land_h_crop2   "Main Crop Rank 2"
label var land_h_crop3   "Main Crop Rank 3"

note land_h_cat : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Category
note land_h_catarea : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Area
note land_h_cattenu : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Ownership
note land_h_crop1 : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Main products grown/harvested in the past 12 months
note land_h_crop2 : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Main products grown/harvested in the past 12 months
note land_h_crop3 : Q: Please indicate the amount of land (in hectares) that you currently own and have rented in/out. Main products grown/harvested in the past 12 months

foreach var of varlist land_h_* {
    note `var' : Source: Annual hoursehold survey 1
   	note `var' : Source file: hhda1_c1_land.csv
}

include lab_miss.do
label value land_h_crop* code_product

label define cat_lb 1 "Natural forest" ///
                    2 "Managed forest" ///
                    3 "Plantations"    ///
                    4 "Cropland"       ///
                    5 "Pasture (natural or planted)" ///
                    6 "Agroforestry"   ///
                    7 "Silvipasture"   ///
                    8 "Fallow"         ///
                    9 "Other vegetation types/land uses (residential, bush, grassland, wetland, etc.)" ///
                    10 "total land owned (1 + 2 + 3 + ... + 9)" ///
                    11 "land rented out (included in 1-9)" ///
                    12 "land rented in (not include3d in 1-9)"
label value land_h_cat cat_lb

label value land_h_cattenu tenur_lb
label value land_h_catarea just_miss_lb


compress
label data "Annual 1: land ownership/rent and use"
datasignature set, reset
save processed/hhda1_c1_land.dta, replace
                    