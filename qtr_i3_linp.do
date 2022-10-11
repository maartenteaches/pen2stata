cscript
import delimited qtr_i3_linp.csv

lab var siteid        "Site ID"
lab var ghousecode    "Household ID"
lab var gvillcode     "Village ID"
lab var qtr           "Quarter"
lab var linp_inp      "Input code"
lab var linp_qty      "Animal Input Quantity"
lab var linp_unit     "Animal Input Unit"
lab var linp_unpx     "Animal Input price per unit"
lab var linp_totcost  "Animal Input total costs"
lab var linp_unpx_imp "level at which Missing price is imputed"

note linp_inp      : Q: What are the quantities and values of inputs used in livestock production during the past 3 months (cash expenditures) Inputs
note linp_qty      : Q: What are the quantities and values of inputs used in livestock production during the past 3 months (cash expenditures) quantity
note linp_unit     : Q: What are the quantities and values of inputs used in livestock production during the past 3 months (cash expenditures) unit
note linp_unpx     : Q: What are the quantities and values of inputs used in livestock production during the past 3 months (cash expenditures) price per unit
note linp_totcost  : Q: What are the quantities and values of inputs used in livestock production during the past 3 months (cash expenditures) total costs
note linp_unpx_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist linp*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_i3_linp.csv
}

include lab_miss.do

label values linp_inp lives_inp_lb
label values linp_qty linp_unpx linp_totcost just_miss_lb
label values linp_unit unit_lb
label values linp_unpx_imp imp_lb

compress
label data "Quarterly: Income from livestock"
datasignature set, reset
save processed/qtr_i3_linp.dta, replace   