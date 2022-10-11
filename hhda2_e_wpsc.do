cscript
import delimited hhda2_e_wpsc.csv

label variable siteid      "Site ID"
label variable ghousecode  "Household ID"
label variable gvillcode   "Village ID"
label variable wpsc_satis  "How satisfied are you with your life over the past 12 months?"
label variable wpsc_fdprod "Has household food production and income over the past 12 months been sufficient"
label variable wpsc_well   "Compared with other households in village, how well off is your household?"
label variable wpsc_well5  "How well off is your household today compared with the situation 5 years ago?"
label variable wpsc_rsn1   "Main reason for change rank 1"
label variable wpsc_rsn2   "Main reason for change rank 2"
label variable wpsc_rsn3   "Main reason for change rank 3"
label variable wpsc_villgd "Do you consider your village (community) to be a good place to live?"
label variable wpsc_trust  "In general do you trust people in the village (community)?"
label variable wpsc_help   "Can you get help from other people in the village (community) if you are in need"

note wpsc_satis: Q: All things considered, how satisfied are you with your life over the past 12 months?
note wpsc_fdprod: Q: Has the household's food production and income over the past 12 months been sufficient to cover the what you consider to be the needs of the household?
note wpsc_well: Q: Compared with other households in the village (or community), how well-off is your household?
note wpsc_well5: Q: How well-off is your household today compared with the situation 5 years ago?
note wpsc_rsn1: Q: If worse- or better-off: what is the main reason for the change? Please rank the most important responses, max 3.
note wpsc_rsn2: Q: If worse- or better-off: what is the main reason for the change? Please rank the most important responses, max 3.
note wpsc_rsn3: Q: If worse- or better-off: what is the main reason for the change? Please rank the most important responses, max 3.
note wpsc_villgd: Q: Do you consider your village (community) to be a good place to live?
note wpsc_trust: Q: Do you in general trust people in the village (community)?
note wpsc_help: Q: Can you get help from other people in the village (community) if you are in need, for example, if you need extra money because someone in your family is sick?

foreach var of varlist wpsc* {
    note `var' : Source: Annual hoursehold survey 2
   	note `var' : Source file: hhda2_e_wpsc.csv
}

include lab_miss.do

label define satis_lb 1 "very unsatisfied" ///
                      2 "unsatisfied"      ///
                      3 "neither unsatisfied or satisfied" /// 
                      4 "satisfied" ///
                      5 "very satisfied" ///
                      `miss_lb'
label values wpsc_satis satis_lb
label define fdprod_lb 1 "no" ///
                       2 "reasonable (just about sufficient)" ///
                       3 "yes" ///
                       `miss_lb'
label values wpsc_fdprod fdprod_lb
label define well_lb 1 "worse-off" 2 "about average" 3 "better-off" `miss_lb'
label values wpsc_well well_lb
label define well5_lb 1 "less well-off now" ///
                      2 "about the same"    ///
                      3 "better off now" `miss_lb'
label values wpsc_well5 well5_lb

label define rsn_lb ///
1 "off farm employment" ///
2 "land holding (e.g., bought/sold land, eviction)" ///
3 "forest resources" ///
4 "output prices (forest, agric,...)" ///
5 "outside support (govt., NGO,...)" ///
6 "remittances" ///
7 "cost of living (e.g., high inflation)" ///
8 "war, civil strife, unrest" ///
9 "conflicts in village (non-violent)" ///
10 "change in family situation (e.g. loss of family member/a major bread-winner)" ///
11 "illness" ///
12 "access (e.g. new road,…)" ///
13 "increased/reduced land area for agric. production" ///
14 "religious awakening (i.e., found religion, converted to a new religion, born again or saved)" ///
15 "started a new business/lost or less business" ///
16 "livestock (gain or loss)" ///
17 "material assets, incl. house (gain or loss)" ///
18 "increased regulations" ///
20 "education / increased knowledge" ///
21 "more engaged in marketing/trade" ///
22 "political stability" ///
23 "crop failure/raiding" ///
24 "changed drinking habits (started/stopped drinking alcohol)" ///
25 "changes in natural resources (fish, etc.)" ///
26 "working for themselves (no longer under a patron)" ///
27 "more time to work" ///
28 "Joined cooperative" ///
29 "Forced to travel for family matters" ///
30 "Fire destroyed everything" ///
31 "Change in job" ///
19 "other (specify):" ///
`miss_lb'
label values wpsc_rsn1 wpsc_rsn2 wpsc_rsn3 rsn_lb

label define villgd_lb 1 "no" 2 "partly" 3 "yes" `miss_lb'
label values wpsc_villgd villgd_lb

label define trust_lb 1 "no" 2 "partly, trust some and not others" 3 "yes" `miss_lb'
label values wpsc_trust trust_lb

label define help_lb 1 "no" 2 "can sometimes get help, but not always" 3 "yes" `miss_lb'
label values wpsc_help help_lb

compress
label data "Annual 2: Welfare perceptions and social capital"
datasignature set, reset

save processed/hhda2_e_wpsc.dta, replace
