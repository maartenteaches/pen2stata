cscript
import delimited "hhda1_a_id_2.csv", clear
keep gvillcode

label var gvillcode    "Village ID"

gen country = floor(gvillcode/1000)
label define country_lb 101 "Belize" ///
                        102 "Bolivia" ///
                        103 "Peru" ///
                        104 "Ecuador" ///
                        105 "Guatemala" ///
                        106 "Brazil" ///
                        201 "Bangladesh" ///
                        202 "China" ///
                        203 "India" ///
                        204 "Indonesia" ///
                        205 "Nepal" ///
                        206 "Pakistan" /// is not in the data
                        207 "Vietnam" ///
                        208 "Cambodia" ///
                        301 "Cameroon" ///
                        302 "Ethiopia" ///
                        303 "Malawi" ///
                        304 "Mozambique" ///
                        305 "Senegal" ///
                        306 "Ghana" ///
                        307 "Uganda" ///
                        308 "Zambia" ///
                        309 "Burkina Faso" ///
                        310 "Democratic Repulic of the Congo" ///
                        311 "Nigeria"
label values country country_lb
label variable country "Country of vilage"
note country: Q: generated from gvillcode

gen site = floor(gvillcode/100)
label define site_lb 1011 "Belize 1, Belize District" ///
                     1021 "Bolivia 1, Cochabamba Department" ///
                     1022 "Bolivia 2, Pando Department" ///
                     1023 "Bolivia 3, Pando Department" ///
                     1031 "Peru 1, Madre de Dios Province" ///
                     1042 "Ecuador 1, Sumaco Biosphere Reserve in western Napo Province" ///
                     1051 "Guatemala 1, Western Highlands; the Departments of Huehuetenango, Quetzaltenango, Totonicapan." ///
                     1061 "Brazil 1, Municipality of Abaetetuba & the municipality of Limoeiro do Ajuru in the state of Pará in Northern Brazil" ///
                     1063 "Brazil 2, Acre (State)" ///
                     1064 "Brazil 3, Acre (State)" ///
                     2011 "Bangladesh 1, Rangamati & Banderban Districts of the Chittagong Hill Tracts" ///
                     2012 "Bangladesh 2, Khagrachari District, Chittagong Hill Tracts" ///
                     2013 "Bangladesh 3, 8 villages in Bandarban District & 6 villages in Rangamati District, Chittagong Hill Tracts" ///
                     2021 "China 1, Northwest Guangxi Province" ///
                     2031 "India 1, Gujerat (State)" ///
                     2032 "India 2, Gujerat (State)" ///
                     2041 "Indonesia 1, East Kalimantan Province" ///
                     2042 "Indonesia 2, Kupang District, Nusa Tenggara Timor" ///
                     2051 "Nepal 1, Mustang District, Central High Mountain region" ///
                     2052 "Nepal 2, Middle Hills of Gorkha District" ///
                     2061 "Pakistan 1, Gilgit District, Northern Areas" /// is not in the data
                     2071 "Vietnam 1, Cat Ba Island" ///
                     2081 "Cambodia 1" ///
                     3011 "Cameroon 1, Department of Boumba-et-Ngoko in the East Region" ///
                     3021 "Ethiopia 2, Arsi Negele District in the Oromia Region" ///
                     3022 "Ethiopia 1, Arsi Negele District in the Oromia Region" ///
                     3031 "Malawi 1, Kasungu District & Machinga District" ///
                     3041 "Mozambique 1, Central Manica Province" ///
                     3042 "Mozambique 2, Central west Sofala Province" ///
                     3051 "Senegal 1, Fatick region in the southwest" ///
                     3061 "Ghana 1 (wet site), Tarkwa Nsuaem & Prestea-Huni valley districts" ///
                     3062 "Ghana 2 (dry site), 3 districts; Ofinso Techiman & Nkoranza" ///
                     3071 "Uganda 1, Four villages in Masindi District; two villages in Buliisa District." ///
                     3081 "Zambia 1, Two villages from Mufulira District in the Northwestern province, & 2 villages from Kabompo District in the Copperbelt" ///
                     3091 "Burkina Faso 1, Banfora, Comoe province" ///
                     3092 "Burkina Faso 2, Nobere Department, in Zoundwéogo Province" ///
                     3101 "DRC 1, Bas-Fleuve district (Lower-River) in the province of Bas-Congo" ///
                     3111 "Nigeria, Cross River State"
label values site site_lb
note site: Q: generated from gvillcode
bys gvillcode : keep if _n == 1

compress
label data "country and site of villages"

datasignature set, reset
save processed/country.dta, replace

 