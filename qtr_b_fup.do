cscript
import delimited qtr_b_fup.csv

lab var siteid       "Site ID"
lab var ghousecode   "Household ID"
lab var gvillcode    "Village ID"
lab var qtr          "Quarter"
lab var fup_pdt      "Forest product"
lab var fup_collby   "Collected by whom"
lab var fup_land     "Land type"
lab var fup_tenu     "Ownership"
lab var fup_qtycoll  "Quantity collected"
lab var fup_unit     "Unit"
lab var fup_used     "Own use"
lab var fup_sold     "Sold"
lab var fup_unpx     "Price per unit"
lab var fup_mkt      "Type of market"
lab var fup_grval    "Gross value"
lab var fup_txcost   "Transport/ Marketing costs"
lab var fup_pipl     "Purchased inputs and hired labour"
lab var fup_nety     "Net Income"
lab var fup_pdt_agg  "Forest product aggregate code"
lab var fup_unpx_imp "Missing price imputed"
lab var an_sub_g_2k  "Annual subsistence fuelwood use greater than 2000 kgs/ae so capped"
lab var px_g_15cents "Fuelwood price (ppp/kg) greater than 15 cents so capped at 15 cents"
lab var px_l_1cent   "Fuelwood price (ppp/kg) less than 1 cent raised to 1 cent"

note fup_pdt : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Forest product
note fup_collby : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Collected by whom
note fup_land : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Collected where, land type
note fup_tenu : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Collected where, ownership
note fup_qtycol : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Quantity collected
note fup_unit : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Forest product
note fup_used : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Own use (incl gifts)
note fup_sold : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Sold (incl. barter)
note fup_unpx : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Price per unit
note fup_mkt : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Type of market
note fup_grval : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Gross value
note fup_txcost : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? transport / marketing costs (total)
note fup_pipl : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? Purch. inputs & hired labour
note fup_nety : Q: What are the quantities and values of raw-material forest products the members of your household collected for both own use and sale over the past month? net income
note fup_pdt_agg: Q: computed
note fup_unpx_imp: Q: computed
note an_sub_g_2k: Q: computed
note px_g_15cents: Q: computed
note px_l_1cent: Q: computed

foreach var of varlist fup* an_sub_g_2k px* {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_b_fup.csv
}

include lab_miss.do

label value fup_pdt code_product
label values fup_collby collby_lb     
label values fup_land land_lb 
label values fup_tenu tenur_lb     
label value fup_qtycol fup_used fup_sold fup_unpx fup_grval fup_txcost fup_pipl fup_nety just_miss_lb 
label values fup_unit unit_lb       
label values fup_mkt market_lb
label values px_g_15cents px_l_1cent yesno_lb

compress
label data "Quarterly: Direct forest income"
datasignature set, reset
save processed/qtr_b_fup.dta, replace                        

   