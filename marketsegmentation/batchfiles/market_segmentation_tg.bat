cd work
if exist *.rpt erase *.rpt
call emme -ng --set-iks 127.0.0.1 000 -m macros\1_import_centroids_only_network.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\2_initialize_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\3_initialize_scalars.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\4_initialize_origin_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\5_initialize_destination_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\6_initialize_full_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\7_import_matrices_tg.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\7-1_input_data_tg.mac %highpnr%
call emme -ng --set-iks 127.0.0.1 000 -m macros\8_sum_car_worker_hhs.mac %hightaz% %lowstation% %highstation% %lowpnr% %highpnr%
cd ..
cd nonwork
if exist *.rpt erase *.rpt
call emme -ng --set-iks 127.0.0.1 000 -m macros\1_import_centroids_only_network.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\2_initialize_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\3_initialize_scalars.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\4_initialize_origin_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\5_initialize_destination_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\6_initialize_full_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\7_import_matrices_tg.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\7-1_input_data_tg.mac %highpnr%
call emme -ng --set-iks 127.0.0.1 000 -m macros\8_sum_car_person_hhs.mac %hightaz% %lowstation% %highstation% %lowpnr% %highpnr%
cd ..
