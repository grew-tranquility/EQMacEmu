#!/bin/bash
# Script: launch_server
# Purpose: Launch server.
#

./build/bin/shared_memory &
sleep 6

./build/bin/loginserver &
sleep 3

./build/bin/world &
sleep 3

./luclin_zones.sh &
sleep 60
./starting_zones.sh &
sleep 120
./classic_zones.sh &
sleep 120
./velious_zones.sh &
sleep 60
./build/bin/eqlaunch dynzone1 &
