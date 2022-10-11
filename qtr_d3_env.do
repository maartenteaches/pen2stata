cscript
import delimited qtr_d3_env.csv

label var siteid       "Site ID"
label var ghousecode   "Household ID"
label var gvillcode    "Village ID"
label var qtr          "Quarter"
label var env_pdt      "Type of product"
label var env_land     "Land type"
label var env_tenu     "Ownership"
label var env_qtycoll  "Quantity collected"
label var env_unit     "Unit"
label var env_used     "Own use"
label var env_sold     "Sold"
label var env_unpx     "Price per unit"
label var env_grval    "Gross value"
label var env_cost     "Costs (Inputs, hired labour, marketing)"
label var env_nety     "Net Income"
label var env_pdt_agg  "Type of product aggregate code"
label var env_unpx_imp "level at which Missing price is imputed"

note env_pdt      : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? type of product
note env_land     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Land type
note env_tenu     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Ownership
note env_qtycoll  : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Quantity collected
note env_unit     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? unit
note env_used     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Own use (incl. gifts)
note env_sold     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Sold (incl. barter)
note env_unpx     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Price per unit
note env_grval    : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Gross value
note env_cost     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Costs (inputs, hired, labour, marketing, etc.)
note env_nety     : Q: In addition to forest products and fish included in the previous tables, how much of other wild products (e.g., from grasslands, fallows, etc.) did your household collect in the past month? Net income
note env_pdt_agg  : Q: created
note env_unpx_imp : Q: created: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist env* {
    note `var' : Source: Quarterly surveys
    note `var' : Source file: qtr_d3_env.csv
}

include lab_miss.do

label value env_pdt code_product
label value env_land land_lb
label value env_tenu tenur_lb
label value env_qtycoll env_used env_sold env_unpx env_grval env_cost env_nety just_miss_lb
label value env_unit unit_lb
label value env_unpx_imp imp_lb


compress
label data "Quarterly: Non-forest environmental income"
datasignature set, reset
save processed/qtr_d3_env.dta, replace     
                        