cscript
import delimited "v1_c_inf.csv", clear

label var siteid       "Site ID"
label var gvillcode    "Village ID"
label var inf_elec     "How many households in the village have access to electricity (from public or pr"
label var inf_tap      "How many households in the village have access to (= use) piped tap water"
label var inf_fcred    "How many households have access to formal credit (government or private bank ope"
label var inf_icred    "Are informal credit institutions such as savings clubs and money lenders present"
label var inf_hcent    "Is there any health centre in the village"
label var inf_rdcar    "Does the village have at least one road useable by cars during all seasons?"
label var inf_kmrd     "Distance in kilometres to the nearest road usable during all seasons"
label var inf_river    "Is there a river within the village boundaries that is navigable during all seas"
label var inf_kmriv    "Distance in kilometres to the nearest river that is navigable during all seasons"
label var inf_kmdistr  "Distance in kilometres to the nearest district market"
label var inf_mindistr "Distance in minutes to the nearest district market"
label var inf_txdist   "Most common means of transport to nearest district market"
label var inf_kmcons   "Distance in kilometres to the nearest market for major consumption goods"
label var inf_mincons  "Distance in minutes to the nearest market for major consumption goods"
label var inf_txcons   "Most common means of transport to nearest market for major consumption goods"
label var inf_kmagri   "Distance in kilometres to the nearest market where agricultural products are so"
label var inf_minagri  "Distance in minutes to the nearest market where agricultural products are sold"
label var inf_txagri   "Most common means of transport to nearest market where agricultural products ar"
label var inf_kmfor    "Distance in kilometres to the nearest district market where forest products are"
label var inf_minfor   "Distance in minutes to the nearest district market where forest products are so"
label var inf_txfor    "Most common means of transport to nearest district market where forest products"

note inf_elec     : Q: How many households in the village have access to electricity (from public or private suppliers)?
note inf_tap      : Q: How many households in the village have access to (= use) piped tap water?
note inf_fcred    : Q: How many households have access to formal credit (government or private bank operating in the village)?
note inf_icred    : Q: Are informal credit institutions such as savings clubs and money lenders present?
note inf_hcent    : Q: Is there any health centre in the village?
note inf_rdcar    : Q: Does the village have at least one road useable by cars during all seasons?
note inf_kmrd     : Q: Distance in kilometres to the nearest road usable during all seasons?
note inf_river    : Q: Is there a river within the village boundaries that is navigable during all seasons?
note inf_kmriv    : Q: Distance in kilometres to the nearest river that is navigable during all seasons
note inf_kmdistr  : Q: Distance in kilometres to the nearest district market
note inf_mindistr : Q: Distance in minutes to the nearest district market
note inf_txdist   : Q: Most common means of transport to nearest district market
note inf_kmcons   : Q: Distance in kilometres to the nearest market for major consumption goods
note inf_mincons  : Q: Distance in minutes to the nearest market for major consumption goods
note inf_txcons   : Q: Most common means of transport to nearest market for major consumption goods
note inf_kmagri   : Q: Distance in kilometres to the nearest market where agricultural products are sold?
note inf_minagri  : Q: Distance in minutes to the nearest market where agricultural products are sold
note inf_txagri   : Q: Most common means of transport to nearest market where agricultural products are sold?
note inf_kmfor    : Q: Distance in kilometres to the nearest district market where forest products are sold ?
note inf_minfor   : Q: Distance in minutes to the nearest district market where forest products are sold?
note inf_txfor    : Q: Most common means of transport to nearest district market where forest products are sold?

foreach var of varlist inf* {
    note `var' : Source: Village survey 1
   	note `var' : source file: v1_c_inf.csv
}

include lab_miss.do
label values inf* just_miss_lb
label values inf_icred inf_hcent inf_rdcar inf_river yesno_lb
label values inf_txdist inf_txcons inf_txagri inf_txfor transport_lb

compress
label data "Village 1: Infrastructure"
datasignature set, reset
save processed/v1_c_inf.dta, replace

