mvdecode * , mv(-8=.a \ -9 = .b)
local miss_lb .a "does not apply" .b "don't know"
label define just_miss_lb `miss_lb'
label define yesno_lb 0 "no" 1 "yes" `miss_lb'

label define imp_lb 0 "no imputation" /// 
                    1 "village quarter" ///
                    2 "village year" ///
                    3 "site quarter" ///
                    4 "site year"

label define code_product 1 `"Timber "', modify
label define code_product 2 `"Poles "', modify
label define code_product 3 `"Fuelwood/firewood"', modify
label define code_product 4 `"Tree barks"', modify
label define code_product 5 `"Tree leaves"', modify
label define code_product 6 `"Tree roots"', modify
label define code_product 7 `"Lianas and vines"', modify
label define code_product 8 `"Rattan"', modify
label define code_product 9 `"Bamboo"', modify
label define code_product 10 `"Frond"', modify
label define code_product 11 `"Tree branches "', modify
label define code_product 12 `"Logs "', modify
label define code_product 13 `"Tree seedlings"', modify
label define code_product 14 `"Fence posts"', modify
label define code_product 15 `"Brooms"', modify
label define code_product 16 `"Leaf for food"', modify
label define code_product 17 `"Leaf for medicinal purpose"', modify
label define code_product 18 `"Root for medicinal purpose"', modify
label define code_product 19 `"Bark for medicinal purpose"', modify
label define code_product 21 `"Wild fruits"', modify
label define code_product 22 `"Nuts"', modify
label define code_product 23 `"Mushroom "', modify
label define code_product 24 `"Roots and tubers"', modify
label define code_product 25 `"Wild vegetables"', modify
label define code_product 26 `"Seeds"', modify
label define code_product 27 `"Medicinal plants"', modify
label define code_product 28 `"Ornamental/aesthetic/fashion"', modify
label define code_product 29 `"Latex and resin "', modify
label define code_product 30 `"Oils"', modify
label define code_product 31 `"Dyes"', modify
label define code_product 32 `"Non-animal manure"', modify
label define code_product 33 `"Fodder grass/livestock browse"', modify
label define code_product 34 `"Thatching grass"', modify
label define code_product 35 `"Other grasses"', modify
label define code_product 36 `"Reeds"', modify
label define code_product 37 `"Spices "', modify
label define code_product 38 `"Stalks "', modify
label define code_product 39 `"Banana fibres"', modify
label define code_product 40 `"Banana leaves"', modify
label define code_product 41 `"Wild yam "', modify
label define code_product 42 `"Wild coffee"', modify
label define code_product 43 `"Wild coffee seedlings"', modify
label define code_product 44 `"Cabbage palm/ Palmito"', modify
label define code_product 45 `"Brazil nut"', modify
label define code_product 46 `"Rubber"', modify
label define code_product 47 `"Natural straw"', modify
label define code_product 48 `"Roasting sticks"', modify
label define code_product 49 `"Mate "', modify
label define code_product 50 `"Brazil nut - processed"', modify
label define code_product 51 `"Game meat – mammals"', modify
label define code_product 52 `"Game meat – reptiles"', modify
label define code_product 53 `"Game meat – birds and bats"', modify
label define code_product 54 `"Game meat – insects and worms"', modify
label define code_product 55 `"Birds nests"', modify
label define code_product 56 `"Fish "', modify
label define code_product 57 `"Animal skin "', modify
label define code_product 58 `"Animal-based medicine"', modify
label define code_product 59 `"Honey "', modify
label define code_product 60 `"Game meat - amphibian"', modify
label define code_product 61 `"Animal manure"', modify
label define code_product 62 `"Wild animals "', modify
label define code_product 63 `"Tracajá"', modify
label define code_product 64 `"Jerky "', modify
label define code_product 71 `"Gold"', modify
label define code_product 72 `"Diamonds"', modify
label define code_product 73 `"Quarry stones"', modify
label define code_product 74 `"Clay/mud"', modify
label define code_product 75 `"Slate"', modify
label define code_product 76 `"Sand"', modify
label define code_product 77 `"Tooth cleaning twigs"', modify
label define code_product 78 `"Stones"', modify
label define code_product 79 `"Potash"', modify
label define code_product 80 `"Salt"', modify
label define code_product 101 `"Sawnwood"', modify
label define code_product 102 `"Charcoal"', modify
label define code_product 103 `"Wooden furniture"', modify
label define code_product 104 `"Other wooden tools/utensils"', modify
label define code_product 105 `"Woodcraft"', modify
label define code_product 106 `"Rattan furniture"', modify
label define code_product 107 `"Other rattan products"', modify
label define code_product 108 `"Bamboo furniture"', modify
label define code_product 109 `"Other bamboo products"', modify
label define code_product 110 `"Canoe"', modify
label define code_product 111 `"Drums"', modify
label define code_product 112 `"Other musical instruments"', modify
label define code_product 113 `"Walking sticks"', modify
label define code_product 114 `"Offcuts "', modify
label define code_product 115 `"Rubber shoes"', modify
label define code_product 116 `"Shingles"', modify
label define code_product 117 `"Thurong"', modify
label define code_product 118 `"Kharang"', modify
label define code_product 119 `"Lai"', modify
label define code_product 120 `"Toloi"', modify
label define code_product 121 `"Kula"', modify
label define code_product 122 `"Dala"', modify
label define code_product 123 `"Chaloin"', modify
label define code_product 124 `"Birdcage"', modify
label define code_product 125 `"Sawnwood type 5cm  x 2cm x 3.8-4m"', modify
label define code_product 126 `"Sawnwood type 5cm x 3cm x 4m"', modify
label define code_product 127 `"Sawnwood type 17cm x 2cm x 4m"', modify
label define code_product 128 `"Sawnwood type 8x5 cm or 8x6cm or 6 x 4cm x 4 m"', modify
label define code_product 129 `"Sawnwood type 12cm x 12cm x 5-6m"', modify
label define code_product 130 `"Sawnwood type 12 cm x 4 cm x 5 m"', modify
label define code_product 131 `"Woven products"', modify
label define code_product 132 `"Juice and oils from forest products"', modify
label define code_product 133 `"Alcoholic beverages"', modify
label define code_product 134 `"Pottery"', modify
label define code_product 135 `"Bricks"', modify
label define code_product 136 `"Roasted cashew"', modify
label define code_product 137 `"Fly swatter"', modify
label define code_product 138 `"Fishing trap/net"', modify
label define code_product 139 `"Catapult"', modify
label define code_product 140 `"Broom"', modify
label define code_product 141 `"Basket"', modify
label define code_product 142 `"Roof of house"', modify
label define code_product 143 `"Floor of house"', modify
label define code_product 144 `"House"', modify
label define code_product 145 `"Storage shed"', modify
label define code_product 146 `"Veranda of house"', modify
label define code_product 147 `"Wall of house"', modify
label define code_product 148 `"Clothes"', modify
label define code_product 149 `"Babassu kernels"', modify
label define code_product 150 `"Babassu charcoal"', modify
label define code_product 151 `"Babassu husks"', modify
label define code_product 152 `"Babassu starch"', modify
label define code_product 153 `"Babassu oil"', modify
label define code_product 154 `"Babassu milk"', modify
label define code_product 155 `"Amapá milk"', modify
label define code_product 156 `"Açaí wine"', modify
label define code_product 157 `"Miriti wine"', modify
label define code_product 158 `"Miriti stems"', modify
label define code_product 159 `"Toys made with miriti"', modify
label define code_product 160 `"Fishing trap"', modify
label define code_product 161 `"Tipiti"', modify
label define code_product 162 `"Pterocarpus amazonicus"', modify
label define code_product 163 `"Himatanthus sucuuba"', modify
label define code_product 164 `"Ungurahuy, majo milk"', modify
label define code_product 165 `"Açaí milk"', modify
label define code_product 166 `"Jarave de asaí"', modify
label define code_product 167 `"Dulce de almendra"', modify
label define code_product 168 `"Açaí (canned)"', modify
label define code_product 169 `"Bacaba wine"', modify
label define code_product 170 `"Cupuaçu pulp"', modify
label define code_product 171 `"Mauritia scraped fruit"', modify
label define code_product 172 `"Andiroba seeds"', modify
label define code_product 173 `"Red horse eye bean"', modify
label define code_product 174 `"Caxinguba bark"', modify
label define code_product 175 `"Veronica bark"', modify
label define code_product 176 `"Succuba bark"', modify
label define code_product 177 `"Andiroba bark"', modify
label define code_product 178 `"Mauritia sticks"', modify
label define code_product 179 `"Mauritia crafts (except toys) "', modify
label define code_product 180 `"Sororoca stem"', modify
label define code_product 181 `"Artesanato-Brinquedo de PFNM"', modify
label define code_product 182 `"Chitro "', modify
label define code_product 183 `"Bhakari/Mandro"', modify
label define code_product 184 `"Thumse"', modify
label define code_product 185 `"Doko"', modify
label define code_product 186 `"Tapari"', modify
label define code_product 187 `"Ghum (Syakhu)"', modify
label define code_product 188 `"Damlo/Namlo"', modify
label define code_product 189 `"Medicinal mixture"', modify
label define code_product 190 `"Açaí Pulp"', modify
label define code_product 201 `"Rice"', modify
label define code_product 202 `"Maize"', modify
label define code_product 203 `"Wheat"', modify
label define code_product 204 `"Barley"', modify
label define code_product 205 `"Millet"', modify
label define code_product 206 `"Sorghum"', modify
label define code_product 207 `"Simsim"', modify
label define code_product 208 `"Teff"', modify
label define code_product 209 `"Buck wheat"', modify
label define code_product 210 `"Naked barley"', modify
label define code_product 211 `"Amaranthus"', modify
label define code_product 212 `"Fresh maize"', modify
label define code_product 213 `"Dry maize"', modify
label define code_product 214 `"Oat"', modify
label define code_product 215 `"Rice (lowland)"', modify
label define code_product 221 `"Cassava/manioc (fresh)"', modify
label define code_product 222 `"Potato "', modify
label define code_product 223 `"Sweet potato"', modify
label define code_product 224 `"Yam"', modify
label define code_product 225 `"Cocoyam/taro"', modify
label define code_product 226 `"Cassava/manioc (dried)"', modify
label define code_product 227 `"Cassava/manioc (flour)"', modify
label define code_product 228 `"Angel's wing"', modify
label define code_product 229 `"Wild taro (?)"', modify
label define code_product 230 `"Malanga"', modify
label define code_product 231 `"Tapioca"', modify
label define code_product 232 `"Curcuma longa"', modify
label define code_product 233 `"Turmeric"', modify
label define code_product 234 `"Souchet"', modify
label define code_product 241 `"Soybean"', modify
label define code_product 242 `"Mung bean"', modify
label define code_product 243 `"Stink bean"', modify
label define code_product 244 `"Pigeon pea"', modify
label define code_product 245 `"Cow pea"', modify
label define code_product 246 `"Grams"', modify
label define code_product 247 `"Groundnut (peanut)"', modify
label define code_product 248 `"Bean (Mustang)"', modify
label define code_product 249 `"String bean"', modify
label define code_product 250 `"Red bean"', modify
label define code_product 251 `"Field beans (fresh)"', modify
label define code_product 252 `"Field beans (dried)"', modify
label define code_product 253 `"Sesame "', modify
label define code_product 254 `"Beans"', modify
label define code_product 255 `"Enkole"', modify
label define code_product 256 `"Legumes (general code)"', modify
label define code_product 257 `"Fava bean, broad-bean"', modify
label define code_product 258 `"Pueraria groundcover"', modify
label define code_product 259 `"Bambara groundnut"', modify
label define code_product 260 `"Peas"', modify
label define code_product 261 `"Leaves of green beans "', modify
label define code_product 262 `"Mung "', modify
label define code_product 263 `"Chick Pea "', modify
label define code_product 264 `"Guar bean/cluster bean"', modify
label define code_product 271 `"Cabbage"', modify
label define code_product 272 `"Carrot"', modify
label define code_product 273 `"Cauliflower"', modify
label define code_product 274 `"Chilli"', modify
label define code_product 275 `"Cucumber"', modify
label define code_product 276 `"Eggplant"', modify
label define code_product 277 `"Garlic"', modify
label define code_product 278 `"Ginger"', modify
label define code_product 279 `"Lettuce"', modify
label define code_product 280 `"Onion"', modify
label define code_product 281 `"Paprika"', modify
label define code_product 282 `"Pepper"', modify
label define code_product 283 `"Pumpkin"', modify
label define code_product 284 `"Spinach"', modify
label define code_product 285 `"Squash "', modify
label define code_product 286 `"Tomato"', modify
label define code_product 287 `"Radish"', modify
label define code_product 289 `"Turnip"', modify
label define code_product 290 `"Gourd (bitter/spiny)"', modify
label define code_product 291 `"Tree tomato (Tamarillo)"', modify
label define code_product 292 `"Okra (Lady's finger)"', modify
label define code_product 293 `"Callaloo"', modify
label define code_product 294 `"Bitter solum"', modify
label define code_product 295 `"Nakati"', modify
label define code_product 296 `"Bitter Eggplant"', modify
label define code_product 297 `"Sweet leaf "', modify
label define code_product 298 `"Luffa"', modify
label define code_product 299 `"Chayote"', modify
label define code_product 300 `"Water spinach "', modify
label define code_product 301 `"Green onion"', modify
label define code_product 302 `"Chicory"', modify
label define code_product 303 `"West Indian gherkin, burr cucumber"', modify
label define code_product 304 `"Collard greens"', modify
label define code_product 305 `"Parsley "', modify
label define code_product 306 `"Arugula"', modify
label define code_product 307 `"Jambú"', modify
label define code_product 308 `"Eru"', modify
label define code_product 309 `"Unspecified vegetables"', modify
label define code_product 310 `"Beet"', modify
label define code_product 311 `"Avocado"', modify
label define code_product 312 `"Banana"', modify
label define code_product 313 `"Carambola/Star fruit"', modify
label define code_product 314 `"Coconut"', modify
label define code_product 315 `"Durian "', modify
label define code_product 316 `"Guava"', modify
label define code_product 317 `"Jack fruit"', modify
label define code_product 318 `"Lemon"', modify
label define code_product 319 `"Lime"', modify
label define code_product 320 `"Lichee"', modify
label define code_product 321 `"Mango"', modify
label define code_product 322 `"Mangosteen"', modify
label define code_product 323 `"Orange"', modify
label define code_product 324 `"Papaya"', modify
label define code_product 325 `"Passion fruit"', modify
label define code_product 326 `"Pineapple"', modify
label define code_product 327 `"Plantain"', modify
label define code_product 328 `"Rambutan"', modify
label define code_product 329 `"Soursop (sirsak)"', modify
label define code_product 330 `"Watermelon"', modify
label define code_product 331 `"Apple"', modify
label define code_product 332 `"Peach"', modify
label define code_product 333 `"Plum"', modify
label define code_product 334 `"Apricot"', modify
label define code_product 335 `"Cantelope"', modify
label define code_product 336 `"Almond"', modify
label define code_product 337 `"Apple"', modify
label define code_product 338 `"Pond-apple"', modify
label define code_product 339 `"Custard apple"', modify
label define code_product 340 `"Grapefruit"', modify
label define code_product 341 `"Cashew fruit"', modify
label define code_product 342 `"Cashew seed/nut"', modify
label define code_product 343 `"Craboo"', modify
label define code_product 344 `"Plum"', modify
label define code_product 345 `"Banana – cooking (Plantain)"', modify
label define code_product 346 `"Banana - brewing"', modify
label define code_product 347 `"Banana - roasting"', modify
label define code_product 348 `"Banana - sweet (small)"', modify
label define code_product 349 `"Banana - sweet (large)"', modify
label define code_product 350 `"Tangerines"', modify
label define code_product 351 `"Cocoa "', modify
label define code_product 352 `"Coffee "', modify
label define code_product 353 `"Tea "', modify
label define code_product 354 `"Fresh coffee"', modify
label define code_product 355 `"Dry coffee"', modify
label define code_product 356 `"Cocoa seeds"', modify
label define code_product 361 `"Cardamom"', modify
label define code_product 362 `"Cinnamon "', modify
label define code_product 363 `"Clove"', modify
label define code_product 364 `"Curry"', modify
label define code_product 365 `"Ginger"', modify
label define code_product 366 `"Mint"', modify
label define code_product 367 `"Pepper"', modify
label define code_product 368 `"Vanilla"', modify
label define code_product 369 `"Xantohxylum"', modify
label define code_product 370 `"Red pepper"', modify
label define code_product 371 `"Coriander"', modify
label define code_product 372 `"Oregano"', modify
label define code_product 373 `"Lemongrass"', modify
label define code_product 374 `"Turmeric "', modify
label define code_product 375 `"Tucupi"', modify
label define code_product 376 `"Bixa orellana"', modify
label define code_product 377 `"Cuminum cyminum"', modify
label define code_product 378 `"African basil"', modify
label define code_product 381 `"Palm oil"', modify
label define code_product 382 `"Sugar cane (and juice)"', modify
label define code_product 383 `"Sunflower"', modify
label define code_product 384 `"Mustard"', modify
label define code_product 385 `"Sweets made from cultivated fruits"', modify
label define code_product 386 `"Aloe vera"', modify
label define code_product 387 `"Urucú"', modify
label define code_product 388 `"Unrefined sugar"', modify
label define code_product 389 `"Licor"', modify
label define code_product 401 `"Cotton"', modify
label define code_product 402 `"Jute"', modify
label define code_product 403 `"Sisal"', modify
label define code_product 404 `"Rubber"', modify
label define code_product 405 `"Tobacco"', modify
label define code_product 406 `"Coca leaves"', modify
label define code_product 407 `"Eucalyptus "', modify
label define code_product 408 `"Palm stem (or heart?)"', modify
label define code_product 409 `"Palm petiole"', modify
label define code_product 410 `"Roselle flowers"', modify
label define code_product 411 `"Roselle leaves"', modify
label define code_product 412 `"Millet stem"', modify
label define code_product 413 `"Acacia spp."', modify
label define code_product 414 `"Pinus spp. (pine)"', modify
label define code_product 415 `"Mahogany "', modify
label define code_product 416 `"Musizi"', modify
label define code_product 417 `"Spanish/Mexican cedar                                   "', modify
label define code_product 418 `"Brazil nut tree  "', modify
label define code_product 419 `"Cannabis"', modify
label define code_product 420 `"Atimezia"', modify
label define code_product 421 `"Grass for domestic animals"', modify
label define code_product 422 `"Legumes for domestic animals "', modify
label define code_product 423 `"Leaves of cultivated crops"', modify
label define code_product 424 `"Crop residues"', modify
label define code_product 425 `"Brachiaria grass"', modify
label define code_product 426 `"Elephant Grass, Napier Grass or Uganda Grass"', modify
label define code_product 427 `"Kikuyo grass"', modify
label define code_product 428 `"Kudzu"', modify
label define code_product 429 `"Stizolobium aterrinum"', modify
label define code_product 430 `"Guinea grass, Tanganyika grass, buffalograss"', modify
label define code_product 431 `"Thatching grass"', modify
label define code_product 432 `"Bluestem grass"', modify
label define code_product 433 `"Khosela"', modify
label define code_product 434 `"Paral"', modify
label define code_product 435 `"Dhod"', modify
label define code_product 436 `"khoya"', modify
label define code_product 437 `"Nal"', modify
label define code_product 501 `"Madd fruit "', modify
label define code_product 502 `"Citrus fruit"', modify
label define code_product 503 `"Breadfruit"', modify
label define code_product 504 `"Cupuacu fruit"', modify
label define code_product 505 `"Barbados cherry"', modify
label define code_product 506 `"Guaraná fruit"', modify
label define code_product 507 `"Inga fruit"', modify
label define code_product 508 `"Bactris fruit"', modify
label define code_product 509 `"Ebidodoima      "', modify
label define code_product 510 `"Acai Palm Fruit"', modify
label define code_product 511 `"Moriche Palm Fruit"', modify
label define code_product 512 `"Kale "', modify
label define code_product 513 `"Araza"', modify
label define code_product 514 `"Star apple"', modify
label define code_product 515 `"Mammee apple"', modify
label define code_product 516 `"Olive"', modify
label define code_product 517 `"Perfume Guava"', modify
label define code_product 518 `"Naranjilla"', modify
label define code_product 519 `"Longan"', modify
label define code_product 520 `"Persimmon"', modify
label define code_product 521 `"Fruit juices (general)"', modify
label define code_product 522 `"Tucumã (fruta)"', modify
label define code_product 523 `"Grapes"', modify
label define code_product 524 `"Tamarind"', modify
label define code_product 525 `"Jambura"', modify
label define code_product 526 `"Safu fruit"', modify
label define code_product 527 `"Cyclanthera pedata"', modify
label define code_product 528 `"Bixa orellana"', modify
label define code_product 529 `"Hojas de Achiote"', modify
label define code_product 530 `"Sugar apple"', modify
label define code_product 531 `"Inga feuillei"', modify
label define code_product 532 `"Malva neglecta"', modify
label define code_product 533 `"Rubus rosifolius"', modify
label define code_product 534 `"Syzygium cumini"', modify
label define code_product 535 `"Duguetia lanceolata"', modify
label define code_product 536 `"Myrciaria dubia"', modify
label define code_product 537 `"Rose apple"', modify
label define code_product 538 `"Genipa americana"', modify
label define code_product 539 `"Poraqueíba paraensis"', modify
label define code_product 540 `"Cassia leiandra"', modify
label define code_product 541 `"Byrsonima carssifolia"', modify
label define code_product 542 `"Eugenia uniflora"', modify
label define code_product 543 `"Talisia esculenta"', modify
label define code_product 544 `"Borojoa sorbilis"', modify
label define code_product 545 `"Manilkara zapota"', modify
label define code_product 546 `"Taruma"', modify
label define code_product 547 `"Purple mombin"', modify
label define code_product 548 `"Noni"', modify
label define code_product 549 `"Cocona"', modify
label define code_product 550 `"Sweet granadilla"', modify
label define code_product 551 `"Aguaí fruit"', modify
label define code_product 552 `"Bacuri fruit"', modify
label define code_product 553 `"Bacaba fruit"', modify
label define code_product 554 `"Cajá fruit"', modify
label define code_product 555 `"Jatobá fruit"', modify
label define code_product 556 `"Iriartea leaves"', modify
label define code_product 557 `"Lucuma fruit"', modify
label define code_product 558 `"Motacu "', modify
label define code_product 559 `"Murumuru leaves"', modify
label define code_product 560 `"Heart of Palm"', modify
label define code_product 561 `"Patauá fruits"', modify
label define code_product 562 `"Piquía fruits"', modify
label define code_product 563 `"Tucuma fruits"', modify
label define code_product 564 `"Açaí Fronds"', modify
label define code_product 565 `"Cusi Fronds"', modify
label define code_product 566 `"Jatata Fronds"', modify
label define code_product 567 `"Motacu Fronds"', modify
label define code_product 568 `"Patujú Leaves"', modify
label define code_product 569 `"Chamairo Vine"', modify
label define code_product 570 `"Titica Vine"', modify
label define code_product 571 `"Andiroba oil"', modify
label define code_product 572 `"Copaíba oil"', modify
label define code_product 573 `"Huassaí, chonta"', modify
label define code_product 574 `"Bamboo shoots"', modify
label define code_product 575 `"Chinese knotweed or Flowery knotweed"', modify
label define code_product 576 `"Kidney shaped mushroom"', modify
label define code_product 577 `"Wood Ear fungus "', modify
label define code_product 578 `"Apple Guava, (chicken fruit)"', modify
label define code_product 579 `"Geming vegetable"', modify
label define code_product 580 `"Star Aniseed"', modify
label define code_product 581 `"Tung-oil seeds, Youtong"', modify
label define code_product 582 `"Tea-oil seeds Camelia"', modify
label define code_product 583 `"Golden needle mushroom"', modify
label define code_product 584 `"Wild celery"', modify
label define code_product 585 `"Paper Mulberry"', modify
label define code_product 586 `"Chinese Chestnut"', modify
label define code_product 587 `"Amatembe"', modify
label define code_product 588 `"Cat's claw"', modify
label define code_product 589 `"Cacheira fruit"', modify
label define code_product 590 `"Round Palm leaves"', modify
label define code_product 591 `"Bi fruit"', modify
label define code_product 592 `"Oenacarpus bacaba Mart."', modify
label define code_product 593 `"Oenacarpus minor"', modify
label define code_product 594 `"Garcinia spp."', modify
label define code_product 595 `"Anacardium spp."', modify
label define code_product 596 `"Não identificado"', modify
label define code_product 597 `"Não identificado"', modify
label define code_product 598 `"Bauhinia spp."', modify
label define code_product 599 `"Derris spp."', modify
label define code_product 601 `"Collard Peccary"', modify
label define code_product 602 `"White-lipped peccary"', modify
label define code_product 603 `"Deer "', modify
label define code_product 604 `"Paca"', modify
label define code_product 605 `"Agouti"', modify
label define code_product 606 `"Armadillo"', modify
label define code_product 607 `"Tejon"', modify
label define code_product 608 `"Howler monkey"', modify
label define code_product 609 `"Spider monkey"', modify
label define code_product 610 `"Other monkies"', modify
label define code_product 611 `"Capybara"', modify
label define code_product 612 `"Tortoise "', modify
label define code_product 613 `"Turtle eggs"', modify
label define code_product 614 `"Tapir"', modify
label define code_product 615 `"Coati mundi"', modify
label define code_product 616 `"Ardilla"', modify
label define code_product 617 `"Guan"', modify
label define code_product 618 `"Mutum"', modify
label define code_product 619 `"Parrot"', modify
label define code_product 620 `"Tinamou"', modify
label define code_product 621 `"Jacamí"', modify
label define code_product 622 `"Tucan"', modify
label define code_product 623 `"Macaw"', modify
label define code_product 624 `"Perdiz"', modify
label define code_product 625 `"Caterpillar"', modify
label define code_product 626 `"Aracoa"', modify
label define code_product 627 `"Dove or pigeon"', modify
label define code_product 628 `"Crab, snail, shrimp and prawn"', modify
label define code_product 630 `"Silure "', modify
label define code_product 631 `"Carpe"', modify
label define code_product 632 `"Snail"', modify
label define code_product 633 `"Crab"', modify
label define code_product 634 `"Lobster"', modify
label define code_product 635 `"Shrimp"', modify
label define code_product 636 `"Mussels"', modify
label define code_product 637 `"Guishap meat"', modify
label define code_product 638 `"Pig meat"', modify
label define code_product 639 `"Kuichcha meat"', modify
label define code_product 640 `"Snake meat"', modify
label define code_product 641 `"Jugle fowl"', modify
label define code_product 642 `"Ghugra insect"', modify
label define code_product 643 `"Ghugu meat"', modify
label define code_product 644 `"Badur/ Bat meat"', modify
label define code_product 645 `"Bak meat"', modify
label define code_product 646 `"Shalik meat"', modify
label define code_product 647 `"Fox meat"', modify
label define code_product 648 `"Deer skin/ horn"', modify
label define code_product 649 `"Frog"', modify
label define code_product 650 `"Choto mach/ cheng mach"', modify
label define code_product 651 `"Almendrillo"', modify
label define code_product 652 `"Ochroma pyramidale"', modify
label define code_product 653 `"Myroxylon balsamun"', modify
label define code_product 654 `"Manilkara bidentata"', modify
label define code_product 655 `"Sandbox Tree"', modify
label define code_product 656 `"Liana"', modify
label define code_product 657 `"Ring-cupped Oak"', modify
label define code_product 658 `"Chinese Red Pine"', modify
label define code_product 659 `"China fir"', modify
label define code_product 660 `"Badu bamboo raw shoots"', modify
label define code_product 661 `"Casuarina"', modify
label define code_product 662 `"Bean Staking Sticks"', modify
label define code_product 663 `"Protium sp."', modify
label define code_product 664 `"Catuaba"', modify
label define code_product 665 `"Alder"', modify
label define code_product 666 `"Schizolobium amazonicum"', modify
label define code_product 667 `"Parkia pendula"', modify
label define code_product 668 `"Cacha"', modify
label define code_product 669 `"Mezilaurus itauba"', modify
label define code_product 670 `"Calycophyllum mult."', modify
label define code_product 671 `"Pink lapacho"', modify
label define code_product 672 `"Guanandi"', modify
label define code_product 673 `"Jacaranda"', modify
label define code_product 674 `"Fine-Leaf Wadara"', modify
label define code_product 675 `"Preciosa"', modify
label define code_product 676 `"Aspidosperma vargasii"', modify
label define code_product 677 `"Brosimum spp."', modify
label define code_product 678 `"Hymenolobium spp."', modify
label define code_product 679 `"Cedrela spp."', modify
label define code_product 680 `"Hymenaea courbaril L."', modify
label define code_product 681 `"Licaria spp"', modify
label define code_product 682 `"Aniba spp"', modify
label define code_product 683 `"Manilkara bidentata"', modify
label define code_product 684 `"Manilkara spp."', modify
label define code_product 685 `"Bagassa guianensis Aublet"', modify
label define code_product 686 `"Jarana"', modify
label define code_product 687 `"Acapu"', modify
label define code_product 688 `"Quaricoara"', modify
label define code_product 689 `"Paricá"', modify
label define code_product 690 `"Melancieira"', modify
label define code_product 691 `"Moringa"', modify
label define code_product 692 `"Amburana Cearensis"', modify
label define code_product 693 `"Euxylophora Paraensis"', modify
label define code_product 694 `"Laurel"', modify
label define code_product 695 `"Microcarphas phitelephas"', modify
label define code_product 696 `"Clarisia racemosa"', modify
label define code_product 697 `"Balfourodendron riedelianum"', modify
label define code_product 698 `"Processed Badu bamboo shoots"', modify
label define code_product 699 `"Shea nut "', modify
label define code_product 700 `"Shea fruit "', modify
label define code_product 701 `"Detarium microcarpa"', modify
label define code_product 702 `"Kaya Sénégalensis"', modify
label define code_product 703 `"Paullinia pinnata"', modify
label define code_product 704 `"Afzélia africana"', modify
label define code_product 705 `"Securidaca longipedunculata"', modify
label define code_product 706 `"African locust bean fruit"', modify
label define code_product 707 `"Soumbala (fermented parkia biglobosa fruits)"', modify
label define code_product 708 `"Red-flowered silk cotton tree fruits "', modify
label define code_product 709 `"Red-flowered silk cotton tree flowers "', modify
label define code_product 710 `"Natal Mahogany "', modify
label define code_product 711 `"Lecythis idatimon"', modify
label define code_product 712 `"Calophyllum spp"', modify
label define code_product 713 `"Guarea sp."', modify
label define code_product 714 `"Ochroma sp."', modify
label define code_product 715 `"Escheweleira coriacea"', modify
label define code_product 716 `"Swartzia jorori"', modify
label define code_product 717 `"Ceiba pentandra"', modify
label define code_product 718 `"Calophyllum"', modify
label define code_product 719 `"Schysolobium sp."', modify
label define code_product 720 `"Xylopia benthamii"', modify
label define code_product 721 `"Schizolobium amazonicum"', modify
label define code_product 722 `"Tabebuia impetiginosa"', modify
label define code_product 723 `"Tectona grandis"', modify
label define code_product 724 `"Centrolobium tomentosum"', modify
label define code_product 725 `"Guarea"', modify
label define code_product 726 `"Terminalia sp"', modify
label define code_product 727 `"Piraquina"', modify
label define code_product 728 `"Palo Santo"', modify
label define code_product 729 `"Cachari"', modify
label define code_product 730 `"Picana"', modify
label define code_product 731 `"Carachupa"', modify
label define code_product 732 `"Garapa"', modify
label define code_product 733 `"Nui"', modify
label define code_product 734 `"Açaí poles"', modify
label define code_product 735 `"Cari Cari"', modify
label define code_product 736 `"Sandal wood"', modify
label define code_product 737 `"Guazuma crinita"', modify
label define code_product 738 `"Chrysophyllum monopyreum"', modify
label define code_product 739 `"Calycophyllum spruceanum"', modify
label define code_product 740 `"Cariniana sp."', modify
label define code_product 741 `"Copaiffera sp."', modify
label define code_product 742 `"Virola sp."', modify
label define code_product 743 `"Ormosia spp."', modify
label define code_product 744 `"Chorisia sp."', modify
label define code_product 745 `"Aniba sp. / Ocotea sp."', modify
label define code_product 746 `"Cedrelinga catenaeformis"', modify
label define code_product 747 `"Shea butter"', modify
label define code_product 748 `"Nauclea latifolia"', modify
label define code_product 749 `"Shea tree bark"', modify
label define code_product 751 `"Uncaria spp."', modify
label define code_product 752 `"Dipteryx odorata Willd"', modify
label define code_product 753 `"Theobroma spp."', modify
label define code_product 754 `"Não identificada"', modify
label define code_product 755 `"Maximiliana maripa"', modify
label define code_product 756 `"Sacoglottis amazonica"', modify
label define code_product 757 `"Coupeia spp"', modify
label define code_product 758 `"Pouteria spp."', modify
label define code_product 759 `"Quina sp."', modify
label define code_product 760 `"Himatanthus sucuuba (Spruce) Woods"', modify
label define code_product 761 `"Muruci"', modify
label define code_product 762 `"Mulberry "', modify
label define code_product 763 `"Jatoba Latex"', modify
label define code_product 764 `"Jarina seeds"', modify
label define code_product 765 `"Jarina leaves"', modify
label define code_product 766 `"Tea-oil Camelia"', modify
label define code_product 767 `"Amazon tree grape"', modify
label define code_product 768 `"Ilex guayusa"', modify
label define code_product 769 `"Imperial grass"', modify
label define code_product 770 `"Inga sp"', modify
label define code_product 771 `"Croton lechleri M"', modify
label define code_product 772 `"Drimys winteri"', modify
label define code_product 773 `"Cordia alliodora"', modify
label define code_product 774 `"Batea"', modify
label define code_product 775 `"Cedrelinga catenaeformis"', modify
label define code_product 776 `"Ice cream bean-tree"', modify
label define code_product 777 `"Copa palm"', modify
label define code_product 778 `"Maytenus macrocarpa"', modify
label define code_product 779 `"Passiflora ligularis Juss"', modify
label define code_product 780 `"False-mamey"', modify
label define code_product 781 `"Dacryodes peruviana"', modify
label define code_product 782 `"Pollalesta discolor"', modify
label define code_product 783 `"Garabato Yuyu"', modify
label define code_product 784 `"Vochysia bracelinii)"', modify
label define code_product 785 `"Swietenia spp (mahagony, macrophylla, humilis ?)"', modify
label define code_product 786 `"¿¿Virola spp. (Myristicaceae)??"', modify
label define code_product 787 `"Neosprucia sp. (Flacour-tiaceae)"', modify
label define code_product 788 `"Ayacara"', modify
label define code_product 789 `"Paso"', modify
label define code_product 790 `""', modify
label define code_product 791 `"Bush mango"', modify
label define code_product 792 `"Bush groundnut (Onyoh)"', modify
label define code_product 793 `"Moi moi leaves"', modify
label define code_product 794 `"Big leaf"', modify
label define code_product 795 `"Eruru"', modify
label define code_product 796 `"Hot leaf"', modify
label define code_product 797 `"(Otashi)"', modify
label define code_product 798 `"Bitter kola"', modify
label define code_product 799 `"Kolanut"', modify
label define code_product 800 `"(Ibaba)"', modify
label define code_product 801 `"Boulvaka leaves "', modify
label define code_product 802 `"Berenga leaves "', modify
label define code_product 803 `"Alligator pepper"', modify
label define code_product 804 `"Bush onions"', modify
label define code_product 805 `"(Okpashi)"', modify
label define code_product 806 `"Palm wine"', modify
label define code_product 807 `"Murmurú seeds"', modify
label define code_product 808 `"Chenopodium ambrosioides"', modify
label define code_product 809 `"Malva neglecta"', modify
label define code_product 810 `"Bixa orellana"', modify
label define code_product 811 `""Leaves" of Bixa orellana"', modify
label define code_product 813 `"Pata de michi fruits"', modify
label define code_product 814 `"Muela"', modify
label define code_product 815 `"Wild Bamboo "', modify
label define code_product 816 `"Planted Bamboo"', modify
label define code_product 817 `"Planted Palm fruit"', modify
label define code_product 818 `"Planted palm sugar "', modify
label define code_product 819 `"Areca palm"', modify
label define code_product 820 `"Malay goosebarry"', modify
label define code_product 821 `"Indian jujube"', modify
label define code_product 822 `"Pummelo, shaddock or pomelo"', modify
label define code_product 823 `"Canna edulis"', modify
label define code_product 824 `"Mansoa alliacea"', modify
label define code_product 825 `"Sapindus saponaria"', modify
label define code_product 826 `"Maytenus macrocarpa"', modify
label define code_product 827 `"Thynnanthus panurensis"', modify
label define code_product 828 `"Malmea sp."', modify
label define code_product 829 `"Crescentia cujete"', modify
label define code_product 830 `"Pouteria torta"', modify
label define code_product 831 `"Ficus sp."', modify
label define code_product 832 `"Pouteria reticulata"', modify
label define code_product 833 `"Coussapoa sp."', modify
label define code_product 834 `"Jujube fruits"', modify
label define code_product 835 `"African plums (marula)"', modify
label define code_product 836 `"Ximenia americana leaves"', modify
label define code_product 837 `"Pavetta crassipes"', modify
label define code_product 838 `"Pseudocedrala kotschyi"', modify
label define code_product 839 `"Crossopteryx febrifuga"', modify
label define code_product 840 `"Salvia, sage"', modify
label define code_product 841 `"Lemon balm"', modify
label define code_product 842 `"Artemisia"', modify
label define code_product 843 `"Peppermint"', modify
label define code_product 844 `"Lemon verbena"', modify
label define code_product 845 `"Valerian"', modify
label define code_product 846 `"Ornamental banana"', modify
label define code_product 847 `"Altamice "', modify
label define code_product 848 `"Destrancadero "', modify
label define code_product 849 `"Sígame "', modify
label define code_product 850 `"Amana "', modify
label define code_product 851 `"Machos "', modify
label define code_product 852 `"Majo Fronds"', modify
label define code_product 853 `"Borassus palm"', modify
label define code_product 854 `"Dawadawa "', modify
label define code_product 855 `"Asami lata"', modify
label define code_product 856 `"Basak pata"', modify
label define code_product 857 `"101 gach"', modify
label define code_product 858 `"Horitaki"', modify
label define code_product 859 `"Bohera"', modify
label define code_product 860 `"Amoloki"', modify
label define code_product 861 `"Durba ghash"', modify
label define code_product 862 `"Dheki shak"', modify
label define code_product 863 `"Kochu shak/ lati/root"', modify
label define code_product 864 `"Bon Aloo"', modify
label define code_product 865 `"Kolar mocha/ ailka/ boli "', modify
label define code_product 866 `"Tara"', modify
label define code_product 867 `"Thankuni"', modify
label define code_product 868 `"Jhankranchi/Bandor gula"', modify
label define code_product 869 `"Katamaris"', modify
label define code_product 870 `"Guitguitta gula"', modify
label define code_product 871 `"Painna gula"', modify
label define code_product 872 `"Jongoli Kala"', modify
label define code_product 873 `"Urium"', modify
label define code_product 874 `"Dewa"', modify
label define code_product 875 `"Dumur"', modify
label define code_product 876 `"Chalta"', modify
label define code_product 877 `"Fuljharu/ broom grass"', modify
label define code_product 878 `"Sungrass/ thatch"', modify
label define code_product 879 `"Wrapping leaf"', modify
label define code_product 880 `"Tree bark/ Mendar chal"', modify
label define code_product 881 `"Vine"', modify
label define code_product 882 `"Ulu grass, Imperata"', modify
label define code_product 883 `"Babassu palm fruit"', modify
label define code_product 884 `"Guatteria elata"', modify
label define code_product 885 `"Ischnosiphon polyphyllus; Thalia spp."', modify
label define code_product 886 `"Desmoncus spp."', modify
label define code_product 887 `"Raphia taedigera"', modify
label define code_product 888 `"Phenakospermum guianensis"', modify
label define code_product 889 `"Walking palm"', modify
label define code_product 890 `"Psidium spp."', modify
label define code_product 891 `"Chysobalanus icaco"', modify
label define code_product 892 `"Passiflora serratodigitata"', modify
label define code_product 893 `"Ficus spp."', modify
label define code_product 894 `"Dogwood"', modify
label define code_product 895 `"False banana"', modify
label define code_product 896 `"Plumeria bracteata"', modify
label define code_product 897 `"Babassu fronds"', modify
label define code_product 898 `"Sucuriju"', modify
label define code_product 899 `"Graxama"', modify
label define code_product 900 `"Coconut leaves"', modify
label define code_product 901 `"Coloradillo"', modify
label define code_product 902 `"Chaquillo"', modify
label define code_product 903 `"Coquito"', modify
label define code_product 904 `"Blanquillo"', modify
label define code_product 905 `"Tacuari"', modify
label define code_product 906 `"Raffia palm"', modify
label define code_product 907 `"Shegun (Bangladesh)"', modify
label define code_product 908 `"Gamari"', modify
label define code_product 909 `"Goda"', modify
label define code_product 910 `"Guitguitta"', modify
label define code_product 911 `"Lali"', modify
label define code_product 912 `"Heory"', modify
label define code_product 913 `"Bhura"', modify
label define code_product 914 `"Jam"', modify
label define code_product 915 `"Garjan"', modify
label define code_product 916 `"Muli/ paya bash"', modify
label define code_product 917 `"Dolu bash"', modify
label define code_product 918 `"Mitinga bash"', modify
label define code_product 919 `"Borak bash"', modify
label define code_product 920 `"Parua/ Pargoua bash"', modify
label define code_product 921 `"Sabiá"', modify
label define code_product 922 `"Tabebuia serratifolia"', modify
label define code_product 923 `"Bitter dam"', modify
label define code_product 924 `"Leaf of Mango tree"', modify
label define code_product 925 `"Bark of Parkia bioglobosa"', modify
label define code_product 926 `"Pulpe of Parkia bioglobosa"', modify
label define code_product 927 `"Eucalyptus leaves "', modify
label define code_product 928 `"Neem – Leaves "', modify
label define code_product 929 `"Papaya leaf"', modify
label define code_product 930 `"Guava Leaf"', modify
label define code_product 931 `"Strychnos spinosa leaf"', modify
label define code_product 932 `"Anona Senegalensis leaf"', modify
label define code_product 933 `"Disopyros mespiliformis Leaf"', modify
label define code_product 934 `"Securidaca longipedunculata - Leaf"', modify
label define code_product 935 `"Lannea Microcarpa Engl. and K. Krause. Leaf"', modify
label define code_product 936 `"Andropgen sp -leaves"', modify
label define code_product 937 `"Andropgen sp - roots"', modify
label define code_product 938 `"Anogeissus leiocarpus – leaf"', modify
label define code_product 939 `"Anogeissus leiocarpus – Bark"', modify
label define code_product 940 `"Faidherbia albida Bark"', modify
label define code_product 941 `"Ximenia Americana L. - Leaf"', modify
label define code_product 942 `"Paullinia pinnata L.  –leaf"', modify
label define code_product 943 `"Pseudocedrala kotschyi branches"', modify
label define code_product 944 `"Cassia siberiana Leaf"', modify
label define code_product 945 `"Cassia siberiana Root"', modify
label define code_product 946 `"Cassia Bark"', modify
label define code_product 947 `"Pseudocedrala kotschyi leaves"', modify
label define code_product 948 `"Cassia sieberiana bark"', modify
label define code_product 949 `"Borassus aethiopium fruit"', modify
label define code_product 950 `"Nauclea latifolia Smith leaves"', modify
label define code_product 951 `"Nauclea latifolia Smith root"', modify
label define code_product 952 `"Bombax Costatum Pellegr. and Vuillet Leaf"', modify
label define code_product 953 `"Castor oil plant, castor bean"', modify
label define code_product 954 `"Bamboo straws (for crafts) "', modify
label define code_product 955 `"Ficus sur leaves"', modify
label define code_product 956 `"Crossopteryx febrifuga (Afzel. Ex G. Don) Benth. Leaves"', modify
label define code_product 957 `"Tamarind leaves"', modify
label define code_product 958 `"Kaya Senegalensis Bark"', modify
label define code_product 959 `"Afzelia Africana Smith ex Pers. - Leaf"', modify
label define code_product 960 `"Ceiba pentandra - Bark"', modify
label define code_product 961 `"Ceiba pentandra - Leaf"', modify
label define code_product 962 `"Wilimwiga - leaves"', modify
label define code_product 963 `"Bandougou"', modify
label define code_product 964 `"Toroyiri"', modify
label define code_product 965 `"Keretigueyili"', modify
label define code_product 966 `"Lomolomo"', modify
label define code_product 967 `"Zibiri"', modify
label define code_product 968 `"Kossafina"', modify
label define code_product 969 `"Acacia spp. leaves"', modify
label define code_product 970 `"Vittelaria paradoxa –wood"', modify
label define code_product 971 `"Anogeissus Leiocarpus"', modify
label define code_product 972 `"Taboulga – wood"', modify
label define code_product 973 `"Nauclea latifolia"', modify
label define code_product 974 `"Acacia gourmensis – general"', modify
label define code_product 975 `"Ficus sur"', modify
label define code_product 976 `"Faidherbia Albida"', modify
label define code_product 977 `"Tamarind"', modify
label define code_product 978 `"Securidaca longipenduculata"', modify
label define code_product 979 `"Ficus sur – root"', modify
label define code_product 980 `"Boscia senegalensis – leaf"', modify
label define code_product 981 `"Mango – bark"', modify
label define code_product 982 `"Lannea micorcarpa – bark"', modify
label define code_product 983 `"Lemon tree - leaf"', modify
label define code_product 984 `"Diosyros mespiliformis"', modify
label define code_product 985 `"Lannea microcarpa fruit"', modify
label define code_product 986 `"Ficus sur - fruits"', modify
label define code_product 987 `"Adasonia digitata fruit"', modify
label define code_product 988 `"Adasonia digitata leaf"', modify
label define code_product 989 `"Balanites ægyptica fruit"', modify
label define code_product 990 `"Lonchocarpus laxiflorus – root"', modify
label define code_product 991 `"Lonchocarpus laxiflorus - wood"', modify
label define code_product 992 `"Pterocarpus erinceus wood"', modify
label define code_product 993 `"Pterocarpus erinceus -leaves"', modify
label define code_product 994 `"Sarcocephalus -fruit "', modify
label define code_product 995 `"Balanites ægyptica -leaves"', modify
label define code_product 996 `"Arara"', modify
label define code_product 997 `"Vochysia spp"', modify
label define code_product 998 `"Mora paraensis"', modify
label define code_product 999 `"Carapa guianensis"', modify
label define code_product 1000 `"Bowdichia virgilioides"', modify
label define code_product 1001 `"Rui fish"', modify
label define code_product 1002 `"Katla fish"', modify
label define code_product 1003 `"Mrigel fish"', modify
label define code_product 1004 `"Triportheus angulatus"', modify
label define code_product 1005 `"Prochilodus platenses Brycon spp."', modify
label define code_product 1006 `"Prochilodus nigricans"', modify
label define code_product 1007 `"Sparus aurata, Brachyplatystoma flavicans"', modify
label define code_product 1008 `"Leporinus striatus"', modify
label define code_product 1009 `"Pseudoplatystoma tigrinum"', modify
label define code_product 1010 `"Peckoltia spp."', modify
label define code_product 1011 `"Hoplias malabaricus"', modify
label define code_product 1012 `"Pseudoplatystoma spp)"', modify
label define code_product 1013 `"Plagioscion squamosissimus"', modify
label define code_product 1014 `"Leporinus spp"', modify
label define code_product 1015 `"Mylossoma duriventris"', modify
label define code_product 1016 `"Pygocentrus nattereri"', modify
label define code_product 1017 `"Astronotus ocellatus"', modify
label define code_product 1018 `"Brachyplatystoma filamentosum"', modify
label define code_product 1019 `"Psectrogaster amazonica"', modify
label define code_product 1020 `"Piaractus spp"', modify
label define code_product 1021 `"Oreochromis spp"', modify
label define code_product 1022 `"Lutjanus spp."', modify
label define code_product 1023 `"Aphanatorulus spp."', modify
label define code_product 1024 `"Stingray"', modify
label define code_product 1025 `"Turú, buzano"', modify
label define code_product 1026 `"Hoplias malabaricus"', modify
label define code_product 1027 `"Colossoma macropomum"', modify
label define code_product 1028 `"Brycon eriptherus"', modify
label define code_product 1029 `"Arapaimas gigas"', modify
label define code_product 1030 `"Pimelodina flavipinnis"', modify
label define code_product 1031 `"Ancestros spp."', modify
label define code_product 1032 `"Cynodon gibbus"', modify
label define code_product 1033 `"Hoplerythrinus initaeniatus"', modify
label define code_product 1034 `"Cichla monoculus"', modify
label define code_product 1035 `"Nile Tilapia"', modify
label define code_product 1036 `"Lactophrys quadricornis"', modify
label define code_product 1037 `"Rhytiodus microlepis"', modify
label define code_product 1038 `"Cerepapa"', modify
label define code_product 1039 `"Tujuno"', modify
label define code_product 1040 `"Engraulis ringens "', modify
label define code_product 1041 `"Osteoglossum bicirrhosum  "', modify
label define code_product 1042 `"Pimelodella sp. "', modify
label define code_product 1043 `"Aequidens tetramerus "', modify
label define code_product 1044 `"Doradidae sp. "', modify
label define code_product 1045 `"Hypostomus spp. "', modify
label define code_product 1046 `"Steindachnerina spp. "', modify
label define code_product 1047 `"Galeocharax gulo  "', modify
label define code_product 1048 `"Trachurus murphyi. "', modify
label define code_product 1049 `"Epapterus dispilurus Cope "', modify
label define code_product 1050 `"Potamorhina altamazonica "', modify
label define code_product 1051 `"Zungaro zungaro "', modify
label define code_product 1052 `"Hypophthalmus marginatus "', modify
label define code_product 1053 `"Calophysus macropterus "', modify
label define code_product 1054 `"Pellona castelnaeana  "', modify
label define code_product 1055 `"Megalodoras irwini  "', modify
label define code_product 1056 `"Sorubim lima  "', modify
label define code_product 1057 `"Hoplosternum littorale "', modify
label define code_product 1058 `"Phractocephalus hemioliopterus "', modify
label define code_product 1059 `"Pseudodoras niger "', modify
label define code_product 1060 `"Curimata vittata "', modify
label define code_product 1061 `"Anodus elongatus"', modify
label define code_product 1062 `"Alligator"', modify
label define code_product 1063 `"Lizard; black tegu"', modify
label define code_product 1064 `"Black piranha"', modify
label define code_product 1065 `"Poraquê"', modify
label define code_product 1066 `"Pacman catfish"', modify
label define code_product 1067 `"Kakakoe"', modify
label define code_product 1068 `"Digi kakisa"', modify
label define code_product 1069 `"Jonga jonga "', modify
label define code_product 1070 `"Mandi"', modify
label define code_product 1071 `"Jacundá"', modify
label define code_product 1072 `"Cará"', modify
label define code_product 1073 `"Jaraqui"', modify
label define code_product 1074 `"Branquinha"', modify
label define code_product 1075 `"Acaratinga"', modify
label define code_product 1076 `"Acarí"', modify
label define code_product 1077 `"Pirambóia"', modify
label define code_product 1078 `""', modify
label define code_product 1079 `"Acará"', modify
label define code_product 1080 `"Arapá "', modify
label define code_product 1081 `"Arari"', modify
label define code_product 1082 `"Araué"', modify
label define code_product 1083 `"Barauá"', modify
label define code_product 1084 `"Barurá"', modify
label define code_product 1085 `"Maracá"', modify
label define code_product 1086 `"Bararcá "', modify
label define code_product 1087 `"Apará"', modify
label define code_product 1088 `"Acará-tucumã"', modify
label define code_product 1089 `"Pirapitinga, pirapichinga"', modify
label define code_product 1090 `"Cadarari, caparari, cararari"', modify
label define code_product 1091 `"Cará-Açu; acará-açú"', modify
label define code_product 1092 `"Cuiú-cuiú"', modify
label define code_product 1093 `"Pexada"', modify
label define code_product 1094 `"Peixe-liso"', modify
label define code_product 1095 `"Tamatá"', modify
label define code_product 1096 `"Cubiú "', modify
label define code_product 1101 `"Corriander leaf"', modify
label define code_product 1102 `"Marfa"', modify
label define code_product 1103 `"Kachu"', modify
label define code_product 1104 `"Mati aloo"', modify
label define code_product 1105 `"Kakrol"', modify
label define code_product 1106 `"Korolla"', modify
label define code_product 1107 `"Jhinga"', modify
label define code_product 1108 `"Chichinga"', modify
label define code_product 1109 `"Borboti bean"', modify
label define code_product 1110 `"Watercress"', modify
label define code_product 1111 `"Greenleaf vegetables"', modify
label define code_product 1112 `"Tindora"', modify
label define code_product 1113 `"Tinda"', modify
label define code_product 1151 `"Croton matourensis"', modify
label define code_product 1152 `"Lucania micrantha"', modify
label define code_product 1153 `"agangkama"', modify
label define code_product 1154 `"sarakiki ping ping"', modify
label define code_product 1155 `"angosoetie "', modify
label define code_product 1156 `"bebe"', modify
label define code_product 1157 `"kaikai"', modify
label define code_product 1158 `"djumu"', modify
label define code_product 1159 `"koeke"', modify
label define code_product 1160 `"Patoi "', modify
label define code_product 1161 `"mi toobi "', modify
label define code_product 1162 `"akoeba gaang"', modify
label define code_product 1201 `"Citrus sp."', modify
label define code_product 1202 `"Fruit pulp, concentrate"', modify
label define code_product 1203 `"Spiny Bitter Gourd"', modify
label define code_product 1204 `"Honey locust "', modify
label define code_product 1205 `"Melon"', modify
label define code_product 1206 `"Astrocaryum "', modify
label define code_product 1207 `"Maripa fruits"', modify
label define code_product 1208 `"Pomerak"', modify
label define code_product 1209 `"Birambi"', modify
label define code_product 1210 `"Paramaca fruit"', modify
label define code_product 1211 `"Borojó"', modify
label define code_product 1212 `"Marmelada - Marmelo"', modify
label define code_product 1213 `"Spanish lime"', modify
label define code_product 1214 `"Several other fuits"', modify
label define code_product 1301 `"Mortar"', modify
label define code_product 1302 `"Pestle"', modify
label define code_product 1303 `"Halo - a plough set"', modify
label define code_product 1351 `"Allanblackia paviflora"', modify
label define code_product 1352 `"Elephant mushroom"', modify
label define code_product 1353 `"Gaira Kasta"', modify
label define code_product 1354 `"Niuro"', modify
label define code_product 1355 `"Flowers"', modify
label define code_product 1356 `"Madhuca indica flower"', modify
label define code_product 1357 `"Aegle marmelos tree"', modify
label define code_product 1358 `"Carissa carandas"', modify
label define code_product 1359 `"Vira-vira"', modify
label define code_product 1360 `"Cafecillo"', modify
label define code_product 1361 `"Agras "', modify
label define code_product 1362 `"Caraño"', modify
label define code_product 1401 `"Timba (Lumber)"', modify
label define code_product 1402 `"Green fuelwood"', modify
label define code_product 1403 `"Fuelwood twigs"', modify
label define code_product 1404 `"Nigalo"', modify
label define code_product 1405 `"Bhatta"', modify
label define code_product 1406 `"Syaula"', modify
label define code_product 1407 `"Ghochha"', modify
label define code_product 1408 `"Sottar"', modify
label define code_product 1409 `"Butea Monosperma tree"', modify
label define code_product 1410 `"Pithecellobium dulce"', modify
label define code_product 1411 `"Cuta"', modify
label define code_product 1412 `"Salao "', modify
label define code_product 1413 `"Lacre"', modify
label define code_product 1414 `"Marupa"', modify
label define code_product 1415 `"Pumaquiro"', modify
label define code_product 1416 `"Ana caspi"', modify
label define code_product 1417 `"Andiroba"', modify
label define code_product `miss_lb', modify


local dejure state community private
local defacto state community private state-community state-private community-private state-community-private
local enforce high moderate/low none

forvalues jure = 1/3 {
	forvalues facto = 1/7 {
    	forvalues enf = 1/3 {
        	label define tenur_lb `jure'`facto'`enf' `"de jure: `:word `jure' of `dejure'', de facto: `:word `facto' of `defacto'', enforcement: `:word `enf' of `enforce''"', modify
        }
    }
}
label define tenur_lb `miss_lb', modify

label define hhassa_lb 1 "Car/truck" , modify
label define hhassa_lb 2 "Tractor", modify
label define hhassa_lb 3 "Motorcycle", modify
label define hhassa_lb 4 "Bicycle", modify
label define hhassa_lb 5 "Handphone/phone", modify
label define hhassa_lb 6 "TV", modify
label define hhassa_lb 7 "Radio", modify
label define hhassa_lb 8 "Cassette/Gramophone/Radiogram/VHS/CD/VCD/DVD/player", modify
label define hhassa_lb 9 "Stove for cooking (gas or electric only)" , modify
label define hhassa_lb 10 "Refrigerator/freezer", modify
label define hhassa_lb 11 "fishing boat and boat engine", modify
label define hhassa_lb 12 "Chainsaw", modify
label define hhassa_lb 13 "Plough", modify
label define hhassa_lb 14 "Scotch cart", modify
label define hhassa_lb 15 "Shotgun/rifle", modify
label define hhassa_lb 16 "Wooden cart or wheelbarrow", modify
label define hhassa_lb 17 "Furniture", modify
label define hhassa_lb 18 "Water pump", modify
label define hhassa_lb 19 "Solar panel", modify
label define hhassa_lb 20 "Sewing machine", modify
label define hhassa_lb 21 "Electric appliance", modify
label define hhassa_lb 22 "Saddle", modify
label define hhassa_lb 23 "House in town", modify
label define hhassa_lb 24 "Battery", modify
label define hhassa_lb 25 "Parabolic antenna (satellite dish)", modify
label define hhassa_lb 26 "Generator", modify
label define hhassa_lb 27 "Sink", modify
label define hhassa_lb 28 "Drill", modify
label define hhassa_lb 29 "Propane tank", modify
label define hhassa_lb 30 "Motor for farina", modify
label define hhassa_lb 31 "Planting machine", modify
label define hhassa_lb 32 "Fishing net", modify
label define hhassa_lb 33 "Mattress", modify
label define hhassa_lb 34 "Water tank", modify
label define hhassa_lb 35 "Air compressor", modify
label define hhassa_lb 36 "Canoe", modify
label define hhassa_lb 37 "Milling machine", modify
label define hhassa_lb 38 "Machinery for workshop", modify
label define hhassa_lb 39 "Carpentry tools", modify
label define hhassa_lb 40 "Handsaw, cross-cut saw", modify
label define hhassa_lb 41 "Pots/Cooking drums/Brewing drums", modify
label define hhassa_lb 42 "Construction materials (ex. barbed wire/timber/bricks)",modify
label define hhassa_lb 43 "Weigh scale", modify
label define hhassa_lb 44 "Camera", modify
label define hhassa_lb 45 "Lamp/pressure lamp", modify
label define hhassa_lb 46 "Clock", modify
label define hhassa_lb 47 "Backpack sprayer", modify
label define hhassa_lb 48 "Trishaw", modify
label define hhassa_lb 49 `"Types of "grass cutters""', modify
label define hhassa_lb 50 "Large roaster (farinha, coffee)", modify
label define hhassa_lb 51 "Machine Boak Srove", modify
label define hhassa_lb 52 "Forrageira, picapasto", modify
label define hhassa_lb 53 "Rice mill", modify
label define hhassa_lb 54 "Oven (iron, tin, copper)", modify
label define hhassa_lb 55 "Flail mower", modify
label define hhassa_lb 56 "Boat engine", modify
label define hhassa_lb 57 "Washing machine", modify
label define hhassa_lb 58 "Karaoke machine", modify
label define hhassa_lb 59 "Gold sifter", modify
label define hhassa_lb 60 "Machine to process assai", modify
label define hhassa_lb 61 "Water reservoir", modify
label define hhassa_lb 62 "Metal drums for storage", modify
label define hhassa_lb 63 "Fan", modify
label define hhassa_lb 64 "Shrimp trap", modify
label define hhassa_lb 65 "Computer", modify
label define hhassa_lb 66 "Impresora", modify
label define hhassa_lb 67 "Hand Grinder", modify
label define hhassa_lb 68 "Pipe", modify
label define hhassa_lb 99 "Other", modify
label define hhassa_lb `miss_lb', modify

label define forest_lb 10 "Natural forest" ///
                       11 "Natural forest closed" ///
                       111 "Natural forest closed seasonally inundated" ///
                       112 "Natural forest closed dominated by palms" ///
                       12 "Natural forest open" ///
                       20 "Managed forest" ///
                       21 "Managed forest closed" ///
                       211 "Managed forest closed seasonally inundated" ///
                       22 "Managed forest open" ///
                       221 "Managed forest open seasonally inundated" ///
                       30 "Plantations" ///
                       31 "Plantations closed" ///
                       32 "Plantations open" ///
                       33 "Fruit plantations" ///
                       `miss_lb'

                       
label define land_lb 10 "Natural forest" ///
                     20 "Managed Forest" ///
                     30 "Plantations" ///
                     40 "Cropland" ///
                     50 "Pasture (natural or planted)" ///
                     60 "Agroforestry" ///
                     70 "Silvipasture" ///
                     80 "Fallow (<15 years since cultivation)" ///
                     90 "Shrubs" ///
                     100 "Grassland" ///
                     110 "Residential areas & infrastructure" ///
                     120 "Wetland" ///
                     130 "Coast (sea)" ///
                     140 "Total land" ///
                     199 "Other" ///
                     `miss_lb'
                     
label define penpartid_lb 10101 "Miriam Wyman, Belize 1" ///
                          10201 "Patricia Uberhuaga Candia, Bolivia 1" ///
                          10202 "Amy Duchelle, Bolivia 2" ///
                          10203 "Angelica Almeyda, Bolivia 3" ///
                          10301 "Angelica Almeyda, Peru 1" ///
                          10402 "Bolier Torres, Ecuador 1" ///
                          10501 "José Pablo Prado Córdova, Guatemala 1" ///
                          10601 "Jamie Cotta, Brazil 1" ///
                          10602 "Sandra C. Tapia Coral, Brazil 2" ///
                          10603 "Amy Duchelle, Brazil 3" ///
                          10604 "Angelica Almeyda, Brazil 4" ///
                          20101 "Khaled Misbahuzzaman, Bangladesh 1" ///
                          20102 "Ajijur Rahman, Bangladesh 2" ///
                          20103 "Shiba P. Kar, Bangladesh 3" ///
                          20201 "Nick Hogarth, China 1" ///
                          20301 "Ajith Chandran, India 1" /// 
                          20302 "Monika Singh, India 2" ///
                          20401 "Ririn S. Purnamasari, Indonesia 1" ///
                          20402 "Ermi Erene, Indonesia 2" ///
                          20501 "Santosh Rayamajhi, Nepal 1" ///
                          20502 "Bir Bahadur Kahnal Chhhetri, Nepal 2" ///
                          20601 "Shah Raees Khan, Pakistan 1" ///
                          20701 "Dao Huy Giap, Vietman 1" ///
                          20801 "Daratg, Cambodia 1" ///
                          30101 "Julius Tieguhong Chupezy, Cameroon 1" ///
                          30201 "Yemiru Tesfaye, Ethopia 2" ///
                          30202 "Abebe Seifu, Ethopia 1" ///
                          30301 "Thabbie Chilongo, Malawi 1" ///
                          30401 "Øystein Juul Nielsen, Mozambique 1" ///
                          30402 "Ravi Hegde, Mozambique 2" ///
                          30501 "Marie Thèrése Yaba Ndiaye, Senegal 1" ///
                          30601 "Beatrice O. Darko, Ghana 1 (wet site)" ///
                          30602 "Beatrice O. Darko, Ghana 1 (dry site)" ///
                          30701 "Pamela Jagger, Uganda 1" ///
                          30801 "Manyewu Mutamba, Zambia 1" ///
                          30901 "Boureima Ouédraogo, Burkina Faso (Banfora)" ///
                          30902 "Marieve Pouliot, Burkina Faso (Nobere)" ///
                          31001 "Riyong Kim, DRC" ///
                          31101 "Sylvanus Abua, Nigeria" ///
                          `miss_lb'
                          
label define unit_lb 1	"Grams", modify
label define unit_lb 2	"Kg", modify
label define unit_lb 3	"Tonnes", modify
label define unit_lb 4	"Pound (lb)", modify
label define unit_lb 5	"Litres", modify
label define unit_lb 6	"Imperial Gallon", modify
label define unit_lb 7	"US gallon (fluids)", modify
label define unit_lb 8	"Bag/sack", modify
label define unit_lb 9	"Bucket", modify
label define unit_lb 10	"Bale", modify
label define unit_lb 11	"Bundle", modify
label define unit_lb 12	"Cord", modify
label define unit_lb 13	"Cob", modify
label define unit_lb 14	"Cup", modify
label define unit_lb 15	"Headload", modify
label define unit_lb 16	"Scotch cart", modify
label define unit_lb 17	"Wheelbarrow", modify
label define unit_lb 18	"Mana (Weight, Nepal)", modify
label define unit_lb 19	"Pathi (Weight, Nepal)", modify
label define unit_lb 20	"Muri (Weight, Nepal)", modify
label define unit_lb 21	"Quart (liquids)", modify
label define unit_lb 22	"Krokis sack (50 lb bag) (Belize)", modify
label define unit_lb 23	"Krokis sack (100 lb bag) (Belize)", modify
label define unit_lb 24	"Bucket (5 lb bucket) (Belize)", modify
label define unit_lb 25	"Bucket (1 lb bucket) (Belize)", modify
label define unit_lb 26	"Bunch (Belize, e.g. bunch of bananas approx 32 fruits)", modify
label define unit_lb 27	"Ounce", modify
label define unit_lb 28	"Tin/Debe", modify
label define unit_lb 29	"Basket", modify
label define unit_lb 30	"Basin/Bucket", modify
label define unit_lb 31	"Bunch", modify
label define unit_lb 32	"Heaps", modify
label define unit_lb 33	"Number (pieces)", modify
label define unit_lb 34	"Stick", modify
label define unit_lb 35	"Trays", modify
label define unit_lb 36	"Handful", modify
label define unit_lb 37	"Cajas", modify
label define unit_lb 38	"Latas", modify
label define unit_lb 39	"cm", modify
label define unit_lb 40	"cm2", modify
label define unit_lb 41	"cm3", modify
label define unit_lb 42	"m", modify
label define unit_lb 43	"m2", modify
label define unit_lb 44	"m3", modify
label define unit_lb 45	"Leaves", modify
label define unit_lb 46	"Boards", modify
label define unit_lb 46	"Square Beams", modify
label define unit_lb 47	"Dose (vaccine)", modify
label define unit_lb 48	"Ball of fencing", modify
label define unit_lb 49	"Jerrycan (5 litre)", modify
label define unit_lb 50	"Jerrycan (20 litre)", modify
label define unit_lb 51	"Polythene bag", modify
label define unit_lb 52	"Saucepan/plate", modify
label define unit_lb 53	"Bottle", modify
label define unit_lb 54	"Lorry (truck load)", modify
label define unit_lb 55	"Spoon", modify
label define unit_lb 56	"Rope", modify
label define unit_lb 57	"Box", modify
label define unit_lb 58	"Tablet", modify
label define unit_lb 59	"Kettle", modify
label define unit_lb 60	"Bowl", modify
label define unit_lb 61	"Packet", modify
label define unit_lb 62	"Block", modify
label define unit_lb 63	"ml (millilitres)", modify
label define unit_lb 64	"People/worker", modify
label define unit_lb 65	"Months", modify
label define unit_lb 66	"Barrica", modify
label define unit_lb 67	"Jug", modify
label define unit_lb 68	"Arroba", modify
label define unit_lb 69	"Ear of corn", modify
label define unit_lb 70	"Fence", modify
label define unit_lb 71	"Stable/Corral", modify
label define unit_lb 72	"Veterinarian visit", modify
label define unit_lb 73	"Package of vitamins", modify
label define unit_lb 74	"Heads (of cattle)", modify
label define unit_lb 75	"Fine ($)", modify
label define unit_lb 76	"Pole", modify
label define unit_lb 77	"Stere", modify
label define unit_lb 78	"Inch", modify
label define unit_lb 80	"Plat Yoruba", modify
label define unit_lb 81	"Small plastic bag", modify
label define unit_lb 82	"50 kg rice bag", modify
label define unit_lb 83	"100 kg rice bag", modify
label define unit_lb 84	"Leaves woven together", modify
label define unit_lb 85	"Hari", modify
label define unit_lb 86	"Maund", modify
label define unit_lb 87	"Roll", modify
label define unit_lb 88	"Plantones", modify
label define unit_lb 89	"Hijuelos", modify
label define unit_lb 90	"Ramas", modify
label define unit_lb 91	"Feet", modify
label define unit_lb 92	"Square feet", modify
label define unit_lb 93	"Cubic feet", modify
label define unit_lb 94	"Jacá (Large squared basket)", modify
label define unit_lb 95	"Paneiro, cofo (Small rounded basket)", modify
label define unit_lb 96	"Granary", modify
label define unit_lb 97	"Canari", modify
label define unit_lb 98	"Pesticide can", modify
label define unit_lb 99	"Seed can", modify
label define unit_lb 100	"Tomato can", modify
label define unit_lb 301	"Congo 7 (Plate used in Burkina Faso)", modify
label define unit_lb 302	"Congo 14 (Plate used in Burkina Faso)", modify
label define unit_lb 303	"Livestock water trough", modify
label define unit_lb 304	"Livestock feeding trough", modify
label define unit_lb 305	"Hen house", modify
label define unit_lb 306	"Arbol", modify
label define unit_lb 307	"Maito (Indigenous term designating quantity hold in two hands)", modify
label define unit_lb 308	"Thurong", modify
label define unit_lb 309	"Cubic feet", modify
label define unit_lb 310	"Napo (Length of the rope used for measuring the fixed circumference of a bundle of thatch grass)", modify
label define unit_lb 311	"Bhari", modify
label define unit_lb 312	"Hal", modify
label define unit_lb 313	"Timba", modify
label define unit_lb 314	"Doko", modify
label define unit_lb 315	"Number", modify
label define unit_lb 316	"Ropani", modify
label define unit_lb 317	"Glass bottle", modify
label define unit_lb 318	"can", modify
label define unit_lb 313	"box", modify
label define unit_lb 314	"Maann (Indian)", modify
label define unit_lb 315	"Gunn (Indian)", modify
label define unit_lb 103	"Hal (Plough)", modify
label define unit_lb 104	"Decimal/ Deci", modify
label define unit_lb 105	"Kani", modify
label define unit_lb 201	"Piece", modify
label define unit_lb 202	"Dozen", modify
label define unit_lb 203	"One person-­day", modify
label define unit_lb 204	"One animal-­day", modify
label define unit_lb 205	"Hour", modify
label define unit_lb 206	"One trip", modify
label define unit_lb 207	"One hundred units", modify
label define unit_lb 208	"One thousand units", modify
label define unit_lb 209	"Quarter of a hectare", modify
label define unit_lb 210	"Donkey load", modify
label define unit_lb 211	"Bhari", modify
label define unit_lb 212	"Tractor hour", modify
label define unit_lb 213	"Tractor load", modify
label define unit_lb 214	"Seed kit", modify
label define unit_lb 215	"Plough (Hal)", modify
label define unit_lb `miss_lb', modify
                  
label define collby_lb 1 "only/mainly by wife and adult female household members" ///
                       2 "both adult males and adult females participate about equally" ///
                       3 "only/mainly by the husband and adult male household members" ///
                       4 "only/mainly by girls (<15 years)" ///
                       5 "only/mainly by boys (<15 years)" ///
                       6 "only/mainly by children (<15 years), and boys and girls participate about equally" ///
                       7 "all members of household participate equally" ///
                       8 "none of the above alternatives" ///
                       9 "person employed by and living with the household" ///
                       `miss_lb'
                       
label define market_lb 10 "within village, friends and relatives"   ///
                       11 "within village, directly to consumers"   ///
                       12 "within village, private wholesale buyer" ///
                       13 "within village, processing factory"      ///
                       14 "within village, producer organization"   ///
                       15 "within village, government agency"       ///
                       19 "within village, other"                   ///
                       20 "outside village, friends and relatives"   ///
                       21 "outside village, directly to consumers"   ///
                       22 "outside village, private wholesale buyer" ///
                       23 "outside village, processing factory"      ///
                       24 "outside village, producer organization"   ///
                       25 "outside village, government agency"       ///
                       29 "outside village, other"                   ///
                       `miss_lb'
                       
label define work_lb 1	"Small-scale agriculture", modify
label define work_lb 2	"Large-scale (commercial)", modify
label define work_lb 3	"Agricultural processing", modify
label define work_lb 4	"Forestry - logging", modify
label define work_lb 5	"Forestry - processing", modify
label define work_lb 6	"Forestry - transport", modify
label define work_lb 7	"Forestry - other", modify
label define work_lb 8	"Fishing", modify
label define work_lb 9	"Transport", modify
label define work_lb 10	"Trade and marketing", modify
label define work_lb 11	"Carpentry", modify
label define work_lb 12	"Construction", modify
label define work_lb 13	"Mechanical", modify
label define work_lb 14	"Mining", modify
label define work_lb 15	"Local cottage industry (not included elsewhere)", modify
label define work_lb 16	"Manufacturing industry", modify
label define work_lb 17	"Service industry", modify
label define work_lb 18	"Government employee", modify
label define work_lb 19	"Community employee", modify
label define work_lb 20	"Tailor, shoe maker, or similar", modify
label define work_lb 21	"Blacksmith/goldsmith", modify
label define work_lb 22	"Domestic work", modify
label define work_lb 23	"Field/research assistant/guide", modify
label define work_lb 24	"Forest guard/ranger", modify
label define work_lb 25	"Quarrying", modify
label define work_lb 26	"Guard (non-forest related)", modify
label define work_lb 27	"Painter", modify
label define work_lb 28	"Aquatic products processing", modify
label define work_lb 29	"Cook", modify
label define work_lb 30	"Road construction/maintenance", modify
label define work_lb 31	"NGO worker", modify
label define work_lb 32	"Business managerial position", modify
label define work_lb 33	"Electrician", modify
label define work_lb 34	"Musician", modify
label define work_lb 35	"Midwife", modify
label define work_lb 36	"Shaman", modify
label define work_lb 37	"Craftsman", modify
label define work_lb 38	"Fishfarm worker", modify
label define work_lb 39 " NTFP worker (harvest & management)", modify
label define work_lb 40	"Teacher (private lessons)", modify
label define work_lb 41	"Boat repair shop employee", modify
label define work_lb 42	"Processing plant employee", modify
label define work_lb 43	"Oil company reforestation crew", modify
label define work_lb 44	"Driver", modify
label define work_lb 45	"Wage work grazing", modify
label define work_lb 99	"Other", modify
label define work_lb `miss_lb', modify               

label define lives_lb 1	"Cattle", modify
label define lives_lb 2	"Buffalos", modify
label define lives_lb 3	"Goats", modify
label define lives_lb 4	"Sheep", modify
label define lives_lb 5	"Pigs", modify
label define lives_lb 6	"Donkeys", modify
label define lives_lb 7	"Ducks", modify
label define lives_lb 8	"Chicken", modify
label define lives_lb 9	"Horses", modify
label define lives_lb 10	"Guinea pigs", modify
label define lives_lb 11	"Rabbit", modify
label define lives_lb 12	"Turkey", modify
label define lives_lb 13	"Guinea fowl", modify
label define lives_lb 14	"Bull/ox (adult, > 3 yrs )", modify
label define lives_lb 15	"Cow (adult, >3 yrs)", modify
label define lives_lb 16	"Steer (young bull/ox) or heifer (young cow) (1-3 years)", modify
label define lives_lb 17	"Calf (< 1 year)", modify
label define lives_lb 18	"Juvenile chicken", modify
label define lives_lb 19	"Other, specify:", modify
label define lives_lb 20	"Doves", modify
label define lives_lb 21	"Dog", modify
label define lives_lb 22	"Goose", modify
label define lives_lb 23	"Piglets", modify
label define lives_lb 24	"Bees (bee hives)", modify
label define lives_lb 25	"Goru", modify
label define lives_lb 26	"Ranga", modify
label define lives_lb 27	"Parewa", modify
label define lives_lb 28	"Mules", modify
label define lives_lb 29	"Helmeted Guineafowl", modify
label define lives_lb 30	"Goat kid (young goat)", modify
label define lives_lb `miss_lb', modify            
                       
label define lives_prod_lb 1  "Meat", modify
label define lives_prod_lb 2  "Milk", modify
label define lives_prod_lb 3  "Butter", modify
label define lives_prod_lb 4  "Cheese", modify
label define lives_prod_lb 5  "Ghee", modify
label define lives_prod_lb 6  "Eggs", modify
label define lives_prod_lb 7  "Hides and skin", modify
label define lives_prod_lb 8  "Wool", modify
label define lives_prod_lb 9  "Manure", modify
label define lives_prod_lb 10 "Draught power", modify
label define lives_prod_lb 11 "Bee hives", modify
label define lives_prod_lb 12 "Honey", modify
label define lives_prod_lb 13 "Curdled milk", modify
label define lives_prod_lb 14 "Soap", modify
label define lives_prod_lb 15 "Quail eggs", modify
label define lives_prod_lb 19 "Other, specify:", modify
label define lives_prod_lb `miss_lb', modify                   

label define lives_inp_lb 1 "Feed/fodder", modify
label define lives_inp_lb 2 "Rental of grazing land", modify
label define lives_inp_lb 3 "Medicines, vaccination and other veterinary services", modify
label define lives_inp_lb 4 "Costs of maintaining barns, enclosures, pens, etc.", modify
label define lives_inp_lb 5 "Hired labour", modify
label define lives_inp_lb 6 "Inputs from own farm", modify
label define lives_inp_lb 7 "Salt", modify
label define lives_inp_lb 8 "Transport to market", modify
label define lives_inp_lb 9 "Other, specify:", modify
label define lives_inp_lb `miss_lb', modify            
       
label define transport_lb 1  "Foot", modify
label define transport_lb 2  "Bike", modify
label define transport_lb 3  "Motorbike", modify
label define transport_lb 4  "Donkey/horse/ox cart", modify
label define transport_lb 5  "Tractor", modify
label define transport_lb 6  "Car/van", modify
label define transport_lb 7  "Truck/lorry", modify
label define transport_lb 8  "Bus", modify
label define transport_lb 9  "Non-motorized boat/raft", modify
label define transport_lb 10 "Motorized boat/raft", modify
label define transport_lb 11 "Rickshaw/3 wheel van", modify
label define transport_lb 12 "Jeep/ chander gari", modify
label define transport_lb 13 "Baby Taxi/ 3 wheeler auto", modify
label define transport_lb 14 "Motocar, trimobile", modify
label define transport_lb 19 "Other", modify
label define transport_lb `miss_lb', modify                       