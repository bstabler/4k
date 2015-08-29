REM Puget Sound 4k: Trip Based Model
REM Created March 2015
REM File created by PSRC staff
REM Batch file to initialize all the matrices and data needed for auto assignments
REM Runs the AM Auto, Transit and Walk and Bike Assignments
REM Only copies in trip tables for iteration >0
REM Utilizes warm starts for all iterations

cd am
if %iternum% == 0 (
     call emme -ng 000 -m macros\1_initialize_matrices.mac
     call emme -ng 000 -m macros\2_initialize_scalars.mac
     call emme -ng 000 -m macros\3_initialize_full_matrices.mac
     call emme -ng 000 -m macros\4_initialize_vdfs.mac
     call emme -ng 000 -m macros\5_initialize_extra_attributes.mac
     call emme -ng 000 -m macros\6_input_tolls.mac
     call emme -ng 000 -m macros\7_input_vot_parameters.mac
     call emme -ng 000 -m macros\8_input_bridge_flags.mac
     call emme -ng 000 -m macros\9_calculate_arterial_delay.mac
     call emme -ng 000 -m macros\10_modify_mode_x.mac
)

IF %RunTollRouteChoice%==Yes (
  
  IF %iternum%==0 (
    call emme -ng 000 -m macros\12_0_add_non_toll_modes.mac
    call emme -ng 000 -m macros\12_1_input_data.mac
    call emme -ng 000 -m macros\12_2_initial_split.mac
    call emme -ng 000 -m macros\12_3_auto_assignment.mac 1 %brgap% %iternum%
    call emme -ng 000 -m macros\12_4_skim_toll_network.mac
  ) ELSE (
    call emme -ng 000 -m macros\12_2_initial_split.mac
    call emme -ng 000 -m macros\12_3_auto_assignment.mac 10 %brgap% %iternum%
    call emme -ng 000 -m macros\12_4_skim_toll_network.mac
    call emme -ng 000 -m macros\12_5_auto_route_choice.mac
    call emme -ng 000 -m macros\12_3_auto_assignment.mac 20 %brgap% %iternum%
    call emme -ng 000 -m macros\12_4_skim_toll_network.mac
    call emme -ng 000 -m macros\12_5_auto_route_choice.mac
    call emme -ng 000 -m macros\12_3_auto_assignment.mac 30 %brgap% %iternum%
    call emme -ng 000 -m macros\12_4_skim_toll_network.mac
    call emme -ng 000 -m macros\12_5_auto_route_choice.mac
    call emme -ng 000 -m macros\12_3_auto_assignment.mac %assigniter% %brgap% %iternum%
  )
  call emme -ng 000 -m macros\13_1_calculate_total_vehicles.mac
) ELSE (
  call emme -ng 000 -m macros\12_auto_assignment.mac %assigniter% %brgap% %iternum%  
  call emme -ng 000 -m macros\13_calculate_total_vehicles.mac
)


if %iternum% == 0 (
     call emme -ng 000 -m macros\14_walk_assignment.mac
     call emme -ng 000 -m macros\15_bike_assignment.mac
)

call emme -ng 000 -m macros\16_transit_assignment.mac
call emme -ng 000 -m macros\17_calculate_bus_vehicle_equivalents.mac

cd ..
echo "AM assignment finished" > doneAM.ind
exit