cd hbother\hov
call emme -ng --set-iks 127.0.0.1 000 -m macros\8_calculate_hh_size.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\9_calculate_adjusted_delay.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\10_calculate_adjusted_bridge_flag.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\11_calculate_hbother_hov_a-p_tod_shares.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\12_calculate_hbother_hov_p-a_tod_shares.mac
cd ..
cd sov
call emme -ng --set-iks 127.0.0.1 000 -m macros\8_calculate_hh_size.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\9_calculate_adjusted_delay.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\10_calculate_adjusted_bridge_flag.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\11_calculate_hbother_sov_a-p_tod_shares.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\12_calculate_hbother_sov_p-a_tod_shares.mac
cd ..\..
echo "HB Other Time of Day Model finished" > doneHBOther.ind
exit