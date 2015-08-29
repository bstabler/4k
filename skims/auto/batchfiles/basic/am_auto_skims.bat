cd am
IF %RunTollRouteChoice%==Yes (
  call emme -ng --set-iks 127.0.0.1 000 -m macros\4_1_skim_am_network.mac
) ELSE (
  call emme -ng --set-iks 127.0.0.1 000 -m macros\4_skim_am_network.mac
)
call emme -ng --set-iks 127.0.0.1 000 -m macros\6_calculate_am_auto_skims.mac
cd ..
echo "am auto skims finished" > doneam.ind
exit