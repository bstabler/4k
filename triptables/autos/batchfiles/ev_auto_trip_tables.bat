cd ev
call emme -ng --set-iks 127.0.0.1 000 -m macros\10_construct_vehicle_trip_tables.mac
cd ..
echo "ev finished" > doneev.ind
exit