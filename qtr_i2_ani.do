cscript
import delimited qtr_i2_ani.csv

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var qtr          "Quarter"
label var ani_pdt      "Animal Product/ Service"
label var ani_pdn      "Production"
label var ani_unit     "Unit of production"
label var ani_used     "Own use of animal product"
label var ani_sold     "Animal Product sold (inc barter)"
label var ani_unpx     "Animal Product price per unit"
label var ani_totval   "Animal Product Total Value"
label var ani_unpx_imp "level at which Missing price is imputed"

note ani_pdt      : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? product/service
note ani_pdn      : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? production
note ani_unit     : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? unit
note ani_used     : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? own use (incl. gifts)
note ani_sold     : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? sold (incl. barter)
note ani_unpx     : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? price per unit
note ani_totval   : Q: What are the quantities and values of animal products and services that you have produced during the past 3 months? total value
note ani_unpx_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist ani*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_i2_ani.csv
}

include lab_miss.do

label values ani_pdt lives_prod_lb
label values ani_pdn ani_used ani_sold ani_unpx ani_totval just_miss_lb
label values ani_unit unit_lb
label values ani_unpx_imp imp_lb

compress
label data "Quarterly: Income from livestock"
datasignature set, reset
save processed/qtr_i2_ani.dta, replace   