cd ni
if exist *.rpt erase *.rpt
call emme -ng --set-iks 127.0.0.1 000 -m macros\1_initialize_ni_matrices.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\1-9_initialize_ni_scalars.mac
call emme -ng --set-iks 127.0.0.1 000 -m macros\2_initialize_ni_full_matrices.mac
cd ..