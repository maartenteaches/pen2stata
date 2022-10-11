cscript
import delimited "v1_b_dem.csv", clear

label var siteid     "Site ID"
label var gvillcode  "Village ID"
label var dem_yrvill "Year village established"
label var dem_pop    "Current population of the village"
label var dem_hhd    "How many households live currently in this village"
label var dem_pop10  "Total population of the village 10 years ago"
label var dem_hhd10  "How many households lived in this village 10 years ago"
label var dem_in     "How many persons living here now moved to the village in the past 10 years (In-m"
label var dem_out    "How many persons have left the village in the past 10 years (Out-miggration)"
label var dem_ethnic "How many different groups (ethnic groups, tribes or castes) are living in the vi"

note dem_yrvill : Q: Year village established
note dem_pop    : Q: Current population of the village
note dem_hhd    : Q: How many households live currently in this village
note dem_pop10  : Q: Total population of the village 10 years ago
note dem_hhd10  : Q: How many households lived in this village 10 years ago
note dem_in     : Q: How many persons living here now moved to the village in the past 10 years (In-migration)?
note dem_out    : Q: How many persons have left the village in the past 10 years (Out-miggration)
note dem_ethnic : Q: How many different groups (ethnic groups, tribes or castes) are living in the village?

foreach var of varlist dem* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_b_dem.csv
}

include lab_miss.do
label values dem* just_miss_lb

compress
label data "Village 1: demographics"
datasignature set, reset
save processed/v1_b_dem.dta, replace
