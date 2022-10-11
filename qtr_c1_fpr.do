cscript
import delimited qtr_c1_fpr.csv

lab var siteid       "Site ID"
lab var ghousecode   "Household ID"
lab var gvillcode    "Village ID"
lab var qtr          "Quarter"
lab var fpr_pdt      "Forest product"
lab var fpr_work     "Who in the household did the work"
lab var fpr_qtyprod  "Quantity produced"
lab var fpr_unit     "Unit"
lab var fpr_used     "Own use"
lab var fpr_sold     "Sold"
lab var fpr_unpx     "Price per unit"
lab var fpr_mkt      "Type of market"
lab var fpr_grval    "Gross value"
lab var fpr_txcost   "Transport/ Marketing costs"
lab var fpr_pipl     "Purchased inputs and hired labour"
lab var fpr_nety     "Net Income"
lab var fpr_pdt_agg  "Forest product aggregate code"
lab var fpr_unpx_imp "level at which Missing price is imputed"

note fpr_pdt      : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? product
note fpr_work     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? who in the household did the work
note fpr_qtyprod  : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? quantity produced
note fpr_unit     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? unit 
note fpr_used     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? own use (incl. gifts)
note fpr_sold     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? sold (incl. barter)
note fpr_unpx     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? price per unit
note fpr_mkt      : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? type of market
note fpr_grval    : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? gross value
note fpr_txcost   : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? transport and marketing costs
note fpr_pipl     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? purchased inputs & hired labour
note fpr_nety     : Q: What are the quantities and values of processed forest products that the members of your household produced during the past month? net income excl costs of forest inputs
note fpr_pdt_agg  : Q: computed
note fpr_unpx_imp : Q: computed: missing prices are imputed with the mean price at the lowest possible level


foreach var of varlist fpr*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_c1_fpr.csv
}

include lab_miss.do

label value fpr_pdt code_product
label values fpr_work collby_lb     
label value fpr_qtyprod fpr_used fpr_sold fpr_unpx fpr_grval fpr_txcost fpr_pipl fpr_nety just_miss_lb 
label values fpr_unit unit_lb       
label values fpr_mkt market_lb
label values fpr_unpx_imp imp_lb

compress
label data "Quarterly: income from processed forest products"
datasignature set, reset
save processed/qtr_c1_fpr.dta, replace                        
