cscript
import delimited qtr_h2_cinp.csv

label var siteid        "Site ID"
label var ghousecode    "Household ID"
label var gvillcode     "Village ID"
label var qtr           "Quarter"
label var cinp_inp      "Crop Input code"
label var cinp_qty      "Crop Input Quantity"
label var cinp_unit     "Crop Input Unit"
label var cinp_unpx     "Crop Input price per unit"
label var cinp_totcost  "Crop Input total costs"
label var cinp_unpx_imp "level at which Missing price is imputed"

note cinp_inp      : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)? Inputs
note cinp_qty      : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)? Quantity
note cinp_unit     : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)? Unit
note cinp_unpx     : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)? Price per unit
note cinp_totcost  : Q: What are the quantities and values of inputs used in crop production over the past 3 months (this refers to agricultural cash expenditures)? total costs
note cinp_unpx_imp : Q: generated: missing prices are imputed with the mean price at the lowest possible level

foreach var of varlist cinp*  {
    note `var' : Source: Source: Quarterly surveys
   	note `var' : Source file: qtr_h2_cinp.csv
}

include lab_miss.do

label define cinp_lb 1 "seeds" ///
                     2 "Fertilizers" ///
                     3 "Pesticides/herbicides" ///
                     4 "Manure" ///
                     5 "Draught power" ///
                     6 "Hired labour" ///
                     7 "Hired machinery" ///
                     8 "Transport/marketing" ///
                     9	"Machete" ///
                     10	"Chainsaw (incl. chains)" ///
                     11	"Gasoline, oil" ///
                     12	"Rasp (sharpener) for blades, machete etc." ///
                     13	"Tool that a grim reaper holds" ///
                     14	"Sacks" ///
                     15	"Ax" ///
                     16	"Large hoe" ///
                     17	"Boca de lobo" ///
                     18	"Shovel" ///
                     19	"Other, specify:" ///
                     20	"Payment for land rental" ///
                     21	"Planting machine" ///
                     22	"Sickle" ///
                     23	"Plastic sheets" ///
                     24	"Rake" ///
                     25	"Basket" ///
                     26	"Crop cover or greenhouse" ///
                     27	"Pallette" ///
                     28	"Garden fence" ///
                     29	"Nails" ///
                     30	"Sprocket" ///
                     31	"Spark plugs" ///
                     32	"Work boots" ///
                     33	"Tools in general" ///
                     34	"Trellis" ///
                     35	"Plough" ///
                     36	"Rope" ///
                     37	"Plastic bottle" ///
                     40	"Cutting down the small trees using a machete" ///
                     41	"Cutting down the big trees using a chainsaw or ax" ///
                     42	"Planting" ///
                     43	"Maintenance" ///
                     44	"Harvest" ///
                     45	"Caretaker" ///
                     46	"Food for hired labor" ///
                     47	"Transportation for hired labor" ///
                     60	"Banana" ///
                     61	"Cabbage" ///
                     62	"Corn" ///
                     63	"Cucumber" ///
                     64	"Grape fruit" ///
                     65	"Lettuce" ///
                     66	"Onion" ///
                     67	"Orange" ///
                     68	"Pepper" ///
                     69	"Rice" ///
                     70	"Seedlings" ///
                     71	"Tomato" ///
                     72	"Okra" ///
                     73	"West Indian gherkin, burr cucumber" ///
                     74	"Cassava seedlings" ///
                     `miss_lb'
label values cinp_inp cinp_lb
label values cinp_unit unit_lb
label values cinp_qty cinp_unpx cinp_totcost just_miss_lb
label values cinp_unpx_imp imp_lb

compress
label data "Quarterly: Income from agriculture - inputs"
datasignature set, reset
save processed/qtr_h2_cinp.dta, replace   



