cscript
import delimited qtr_h1_crop.csv

label var siteid        "Site ID"
label var ghousecode    "Household ID"
label var gvillcode     "Village ID"
label var qtr           "Quarter"
label var crop_pdt      "Crop code"
label var crop_totpdn   "Total Production"
label var crop_unit     "Unit of production"
label var crop_used     "Own use of crop product"
label var crop_sold     "Crop product sold (inc barter)"
label var crop_unpx     "Crop product price per unit"
label var crop_totval   "Crop Total Value"
label var crop_pdt_agg  "Crop code aggregate code"
label var crop_unpx_imp "level at which Missing price is imputed"

note crop_pdt      : Q: What are the quantities and values of crops that household has harvested during the past 3 months? Crops
note crop_totpdn   : Q: What are the quantities and values of crops that household has harvested during the past 3 months? Total production
note crop_unit     : Q: What are the quantities and values of crops that household has harvested during the past 3 months? unit (for production)
note crop_used     : Q: What are the quantities and values of crops that household has harvested during the past 3 months? Own use (incl. gifts)
note crop_sold     : Q: What are the quantities and values of crops that household has harvested during the past 3 months? sold (incl. barter)
note crop_unpx     : Q: What are the quantities and values of crops that household has harvested during the past 3 months? Price per unit
note crop_totval   : Q: What are the quantities and values of crops that household has harvested during the past 3 months? Total value
note crop_pdt_agg  : Q: generated
note crop_unpx_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist crop*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_h1_crop.csv
}

include lab_miss.do

label values crop_pdt code_product
label values crop_unit unit_lb
label values crop_totpdn crop_used crop_sold crop_unpx crop_totval just_miss_lb
label values crop_unpx_imp imp_lb

compress
label data "Quarterly: Income from agriculture - crops"
datasignature set, reset
save processed/qtr_h1_crop.dta, replace   