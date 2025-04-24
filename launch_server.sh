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

./starting_zones.sh &
sleep 1
./velious_zones.sh &
sleep 1
./build/bin/eqlaunch dynzone1 &
