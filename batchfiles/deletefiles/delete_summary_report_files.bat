REM summary reports
REM generation
cd generation/trip/summaries
if exist *.rp* erase *.rp*
cd ../../..
REM distribution
cd distribution/summaries
if exist *.rp* erase *.rp*
cd ../..
REM vehicle availability
cd vehicleavailability/all/summaries
if exist *.rp* erase *.rp*
cd ../../..
REM trip tables
cd triptables/summaries
if exist *.rp* erase *.rp*
cd ../..