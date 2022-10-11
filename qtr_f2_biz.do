cscript
import delimited qtr_f2_biz.csv

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var qtr          "Quarter"
label var biz_type     "What is your type of business"
label var biz_grinc    "Gross income (sales)"
label var biz_pi       "Purchased inputs"
label var biz_owninp   "Own non labour inputs"
label var biz_hirelab  "Hired Labor"
label var biz_txcost   "Transport and Marketing costs"
label var biz_kcost    "Capital costs (repair, maintenance etc)"
label var biz_other    "Other costs"
label var biz_nety     "Net income"
label var biz_valstock "Current value of capital stock"

note biz_type     : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? What is your type of business
note biz_grinc    : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Gross income (sales)
note biz_pi       : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: Purchased inputs
note biz_owninp   : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: Own non-labour inputs (equivalent market value) 
note biz_hirelab  : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: Hired labour
note biz_txcost   : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: transport and marketing cost
note biz_kcost    : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: Capital costs (repair, maintenance, etc.)
note biz_other    : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? Costs: other costs
note biz_nety     : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? net income
note biz_valstock : Q: Are you involved in any types of business, and if so, what are the gross income and costs related to that business over the past month? current value of capital stock

foreach var of varlist biz*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_f2_biz.csv
}

include lab_miss.do

label define biz_type 1 "shop/trade" ///
                      2 "agric. processing" ///
                      3 "handicraft" ///
                      4 "carpentry" ///
                      5 "other forest based" ///
                      6 "other skilled labour" ///
                      7 "transport (car, boat,...)" ///
                      8 "lodging/restaurant" ///
                      9 "brewing" ///
                      10 "brick making" ///
                      11 "landlord/real estate" ///
                      12 "herbalist/traditional healer/witch doctor" ///
                      13 "quarrying" ///
                      14 "contracted work (cleaning/maintenance)" ///
                      15 "renting out equipment" ///
                      19 "other, specify" ///
                      `miss_lb'
label values biz_type biz_type 
label values biz_grinc biz_pi biz_owninp biz_hirelab biz_txcost biz_kcost biz_other biz_nety biz_valstock just_miss_lb

compress
label data "Quarterly: Income from own business (not forest or agriculture)"
datasignature set, reset
save processed/qtr_f2_biz.dta, replace                        