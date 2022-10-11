cscript
import delimited qtr_d2_aqua.csv

order siteid gvillcode ghousecode qtr

replace aqua_type = aqua_type + 1000 if !(inrange(aqua_type, 628, 636) | ///
                                          inlist(aqua_type, 650, 643, 438) |       ///
                                          inrange(aqua_type,1000,2000) | ///
                                          aqua_type >= 9001 | aqua_type < 0) 
replace aqua_type = aqua_type - 8000 if aqua_type >= 9001

label var siteid          "Site ID"
label var gvillcode       "Village ID"
label var ghousecode      "Household ID"
label var qtr             "Quarter"
label var aqua_type       "Type of fish"
label var aqua_where      "From where?"
label var aqua_catch      "Total catch (Kg)"
label var aqua_used       "Own use"
label var aqua_sold       "Sold"
label var aqua_kilopx     "Price per Kg"
label var aqua_grval      "Gross value"
label var aqua_cost       "Costs (Inputs, hired labour, marketing)"
label var aqua_nety       "Net Income"
label var aqua_kilopx_imp "level at which Missing price is imputed"

note aqua_type       : Q: How much fish did your household catch from ponds (aquaculture) in the past month? Type of fish
note aqua_where      : Q: How much fish did your household catch from ponds (aquaculture) in the past month? From where
note aqua_catch      : Q: How much fish did your household catch from ponds (aquaculture) in the past month? total catch (kg)
note aqua_used       : Q: How much fish did your household catch from ponds (aquaculture) in the past month? own use (incl. gifts)
note aqua_sold       : Q: How much fish did your household catch from ponds (aquaculture) in the past month? sold (incl. barter)
note aqua_kilopx     : Q: How much fish did your household catch from ponds (aquaculture) in the past month? price per kg
note aqua_grval      : Q: How much fish did your household catch from ponds (aquaculture) in the past month? gross value
note aqua_cost       : Q: How much fish did your household catch from ponds (aquaculture) in the past month? costs (inputs, hired labour, marketing, etc.)
note aqua_nety       : Q: How much fish did your household catch from ponds (aquaculture) in the past month? net income
note aqua_kilopx_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist aqua* {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_d2_aqua.csv
}

include lab_miss.do

label values aqua_type code_product
label define aqua_where 1 "Pond owned by households" ///
                        2 "Pond owned by group of which household is a member" ///
                        3 "Pond owned by community/village" ///
                        4 "Pond owned by others and persons can buy fishing rights" ///
                        9 "Other, specify" ///
                        `miss_lb'
label values aqua_where aqua_where       
label value aqua_catch aqua_used aqua_sold aqua_kilopx aqua_grval aqua_cost aqua_nety just_miss_lb
label value aqua_kilopx_imp imp_lb

compress
label data "Quarterly: income from Aquaculture"
datasignature set, reset
save processed/qtr_d2_aqua.dta, replace     
                        