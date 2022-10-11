cscript
import delimited qtr_f1_wage.csv
drop __*
label var siteid         "Site ID"
label var ghousecode     "Household ID"
label var gvillcode      "Village ID"
label var qtr            "Quarter"
label var wage_pid       "Household member PID"
label var wage_work      "Type of work"
label var wage_days      "Days worked past month"
label var wage_drate     "Daily wage rate"
label var wage_toty      "Total wage income"
label var wage_drate_imp "level at which Missing price is imputed"

note wage_work      : Q: Has any member of the household had paid work over the past month? type of work
note wage_days      : Q: Has any member of the household had paid work over the past month? days worked past month
note wage_drate     : Q: Has any member of the household had paid work over the past month? daily wage rate
note wage_toty      : Q: Has any member of the household had paid work over the past month? total wage income
note wage_drate_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist wage*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_f1_wage.csv
}

include lab_miss.do

label values wage_work work_lb
label values wage_days wage_drate wage_toty just_miss_lb
label values wage_drate_imp imp_lb

compress
label data "Quarterly: Wage income"
datasignature set, reset
save processed/qtr_f1_wage.dta, replace   