cscript
import delimited qtr_d1_fish.csv

replace fish_type = fish_type + 1000 if !(inrange(fish_type, 628, 636) | ///
                                          inlist(fish_type, 650, 643, 438) |       ///
                                          inrange(fish_type,1000,2000) | ///
                                          fish_type >= 9001 | fish_type < 0)
replace fish_type = fish_type - 8000 if fish_type >= 9001
label var siteid          "Site ID"
label var ghousecode      "Household ID"
label var gvillcode       "Village ID"
label var qtr             "Quarter"
label var fish_type       "Type of fish"
label var fish_land       "Land type"
label var fish_tenu       "Ownership"
label var fish_catch      "Total catch (Kg)"
label var fish_used       "Own use"
label var fish_sold       "Sold"
label var fish_kilopx     "Price per Kg"
label var fish_grval      "Gross value"
label var fish_cost       "Costs (Inputs, hired labour, marketing)"
label var fish_nety       "Net Income"
label var fish_kilopx_imp "level at which Missing price is imputed"

note fish_type       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? Type of fish
note fish_land       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? land type
note fish_tenu       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? ownership
note fish_catch      : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? total catch (kg)
note fish_used       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? own use (incl. gifts)
note fish_sold       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? sold (incl. barter)
note fish_kilopx     : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? price per kg.
note fish_grval      : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? gross value
note fish_cost       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? costs (inputs, hired labour, marketing)
note fish_nety       : Q: How much fish did your household catch exclusively from the wild (rivers, lake, sea) during the past month? net income
note fish_kilopx_imp : Q: computed: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist fish* {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_d1_fish.csv
}

include lab_miss.do

label value fish_type code_product
label value fish_land land_lb
label value fish_tenu tenur_lb
label value fish_catch fish_used fish_sold fish_kilopx fish_grval fish_cost fish_nety just_miss_lb
label value fish_kilopx_imp imp_lb

compress
label data "Quarterly: income from Fishing"
datasignature set, reset
save processed/qtr_d1_fish.dta, replace     
