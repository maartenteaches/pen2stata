version 13.1

cd "D:\Mijn documenten\projecten\pen\"

capture mkdir processed

// annual 1
do hhda1_a_id_2.do
do hhda1_b.do
do hhda1_b1_hhc.do
do hhda1_c_1.do
do hhda1_c1_land.do
do hhda1_d_asa.do
do hhda1_d2_imp.do
do hhda1_e_frb.do
do hhda1_f_fug.do

// annual 2
do hhda2_a_id.do
do hhda2_b.do
do hhda2_b1_cue.do
do hhda2_c.do
do hhda2_c1_fs.do
do hhda2_d_fcl.do
do hhda2_e_wpsc.do
do hhda2_f_enum.do

// quarterly
do qtr_a.do
do qtr_b.do
do qtr_b_fup.do
do qtr_c.do
do qtr_c1_fpr.do
do qtr_d.do
do qtr_d1_fish.do
do qtr_d2_aqua.do
do qtr_d3_env.do
do qtr_f.do
do qtr_f1_wage.do
do qtr_f2_biz.do
do qtr_h.do
do qtr_h1_crop.do
do qtr_h2_cinp.do
do qtr_i.do
do qtr_i1_liv.do
do qtr_i2_ani.do
do qtr_i3_linp.do
do qtr_i4_fod.do
do qtr_j.do
do qtr_j_oth.do

// village 1
do v1_a_geo.do
do v1_b_dem.do
do v1_c_inf.do
do v1_d.do
do v1_d1_land.do
do v1_d2_for.do
do v1_d3_mgt.do
do v1_e.do
do v1_e_frb.do
do v1_f.do
do v1_f_fi.do
do v1_g.do
do v1_g_fug.do

// village 2
do v2_a_geo.do
do v2_b_risk.do
do v2_bc.do
do v2_d.do
do v2_d_pay.do


// generated
do country.do
