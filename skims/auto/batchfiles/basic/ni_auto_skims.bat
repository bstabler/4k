cd ni
IF %RunTollRouteChoice%==Yes (
  call emme -ng --set-iks 127.0.0.1 000 -m macros\4_1_skim_ni_network.mac
) ELSE (
  call emme -ng --set-iks 127.0.0.1 000 -m macros\4_skim_ni_network.mac
)
call emme -ng --set-iks 127.0.0.1 000 -m macros\6_calculate_ni_auto_skims.mac
cd ..
echo "ni auto skims finished" > doneni.ind
exit