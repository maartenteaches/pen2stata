cscript
import delimited "v2_bc.csv", clear

label var siteid      "Site ID"
label var gvillcode   "Village ID"
label var risk_v_lead "Has the village faced any crises over the past 12 months?"
label var wap_peakm   "Peak daily wage rate for male"
label var wap_peakf   "Peak daily wage rate for female"
label var wap_slackm  "Slack daily wage rate for male"
label var wap_slackf  "Slack daily wage rate for female"
label var wap_staple  "What is the main staple food in the village?"
label var wap_pxbef   "Price of a Kg of the main staple food during the past 12 months before the main"
label var wap_pxaft   "Price of a Kg of the main staple food during the past 12 months after the main a"
label var wap_hapx    "Sale value of one hectare of good agricultural land"

note risk_v_lead : Q: Has the village faced any crises over the past 12 months?
note wap_peakm   : Q: What was the typical daily wage rate for unskilled agricultural/casual adult male/female labour during the peak/slack season in this village over the past 12 months? (Lc$ /day): Peak daily wage rate for male
note wap_peakf   : Q: What was the typical daily wage rate for unskilled agricultural/casual adult male/female labour during the peak/slack season in this village over the past 12 months? (Lc$ /day): Peak daily wage rate for female
note wap_slackm  : Q: What was the typical daily wage rate for unskilled agricultural/casual adult male/female labour during the peak/slack season in this village over the past 12 months? (Lc$ /day): Slack daily wage rate for male
note wap_slackf  : Q: What was the typical daily wage rate for unskilled agricultural/casual adult male/female labour during the peak/slack season in this village over the past 12 months? (Lc$ /day): Slack daily wage rate for female
note wap_staple  : Q: What is the main staple food in the village?
note wap_pxbef   : Q: Price of a Kg of the main staple food during the past 12 months before the main agricultural harvest
note wap_pxaft   : Q: Price of a Kg of the main staple food during the past 12 months after the main agricultural harvest
note wap_hapx    : Q: Sale value of one hectare of good agricultural land

foreach var of varlist wap* risk_v_lead {
    note `var' : Source: Village survey 2
   	note `var' : source file: v2_bc.csv
}
include lab_miss.do

label values risk_v_lead yesno_lb
label values wap_peakm wap_peakf wap_slackm wap_slackf wap_pxbef wap_pxaft wap_hapx just_miss_lb
label values wap_staple code_product

compress
label data "Village 2: Wages and prices and lead risk"
datasignature set, reset
save processed/v2_bc.dta, replace
