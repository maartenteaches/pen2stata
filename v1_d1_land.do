cscript
import delimited "v1_d1_land.csv", clear
replace land_v_cat = land_v_cat * 10 if land_v_cat > 0 & land_v_cat != 13
replace land_v_cat = 199 if land_v_cat == 13

label var siteid       "Site ID"
label var gvillcode    "Village ID"
label var land_v_cat   "Land category"
label var land_v_total "Total area (ha)"
label var land_v_state "State ownership (ha)"
label var land_v_comm  "Community ownership (ha)"
label var land_v_priv  "Private ownership (ha)"
label var land_v_open  "Open access (ha)"

note land_v_cat  : Q: Land categories in the village (approx. area in hectares). Land category
note land_v_tota : Q: Land categories in the village (approx. area in hectares). Total area (ha)
note land_v_stat : Q: Land categories in the village (approx. area in hectares). State ownership (ha)
note land_v_comm : Q: Land categories in the village (approx. area in hectares). Community ownership (ha)
note land_v_priv : Q: Land categories in the village (approx. area in hectares). Private ownership (ha)
note land_v_open : Q: Land categories in the village (approx. area in hectares). Open access (ha)

foreach var of varlist land* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_d1_land.csv
}

include lab_miss.do
label values land_v_cat land_lb
label values land_v_tota land_v_stat land_v_comm land_v_priv land_v_open just_miss_lb

compress
label data "Village 1: Forest and land cover/use"
datasignature set, reset
save processed/v1_d1_land.dta, replace
