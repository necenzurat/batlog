#!/bin/bash
location="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


date >> ${location}/batlog.dat
/usr/sbin/ioreg -l | egrep "CycleCount|Capacity" >> ${location}/batlog.dat
