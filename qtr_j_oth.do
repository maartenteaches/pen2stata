cscript
import delimited qtr_j_oth.csv

label var siteid     "Site ID"
label var ghousecode "Household ID"
label var gvillcode  "Village ID"
label var qtr        "Quarter"
label var oth_type   "Income type"
label var oth_totinc "Total income recieved in past 3 months"

note oth_type   : Q: Please list any other income that the household has received during the past 3 months Income type
note oth_totinc : Q: Please list any other income that the household has received during the past 3 months Total income recieved in past 3 months

include lab_miss.do

label define oth_lb 1  "Remittances", modify
label define oth_lb 2  "Support from government, NGO, organization or similar", modify
label define oth_lb 3  "Gifts/support from friends and relatives", modify
label define oth_lb 4  "Pension", modify
label define oth_lb 5  "Payment for forest services", modify
label define oth_lb 6  "Payment for renting out land (if in kind, state the equivalent in cash)", modify
label define oth_lb 7  "Compensation from logging or mining company (or similar)", modify
label define oth_lb 9  "Other, specify:", modify
label define oth_lb 10 "Maternity leave", modify
label define oth_lb 11 "Support for sickness or disease", modify
label define oth_lb 12 "Educational fund", modify
label define oth_lb 13 "NGO food donation", modify
label define oth_lb 14 "Seeds (usually for annual crops)", modify
label define oth_lb 15 "Seedlings (usually for perennial crops)", modify
label define oth_lb 16 "Tools (sale, renting out)", modify
label define oth_lb 17 "Payment to agricultural producers", modify
label define oth_lb 18 "Rubber tapper retirement", modify
label define oth_lb 19 "House rental", modify
label define oth_lb 20 "Sale of standing trees", modify
label define oth_lb 21 "Research/NGO assistance", modify 
label define oth_lb 22 "Widower's payment (or other death in family)", modify
label define oth_lb 23 "Land sales", modify
label define oth_lb 24 "Dowry", modify
label define oth_lb 25 "Work in political campaigns", modify
label define oth_lb 26 "Watchman", modify
label define oth_lb 27 "Fishermen insurance", modify
label define oth_lb 28 "Government social programs (eg: Bolsa família - Brazil)", modify
label define oth_lb 29 "Rural credit", modify
label define oth_lb 30 "Business of buying and selling of agriculture and extractive products", modify
label define oth_lb 31 "Business related to fishing", modify
label define oth_lb 32 "Transportation of passengers", modify
label define oth_lb `miss_lb', modify
label values oth_type oth_lb
label values oth_totinc just_miss_lb

compress
label data "Quarterly: Other income sources"
datasignature set, reset
save processed/qtr_j_oth.dta, replace  


