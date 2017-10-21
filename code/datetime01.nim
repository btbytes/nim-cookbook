import times, os
var
  t = cpuTime()
sleep(100)   # replace this with something to be timed

echo "Time taken: ",cpuTime() - t
# Time taken: 3.600000000000001e-05

echo "My formatted time: ", format(getLocalTime(getTime()), "d MMMM yyyy HH:mm")
# My formatted time: 20 October 2017 23:24

echo "Using predefined formats: ", getClockStr(), " ", getDateStr()
# Using predefined formats: 23:24:55 2017-10-20

echo "epochTime() float value: ", epochTime()
# epochTime() float value: 1508556295.002347

echo "getTime()   float value: ", toSeconds(getTime())
# getTime()   float value: 1508556295.0

echo "cpuTime()   float value: ", cpuTime()
# cpuTime()   float value: 0.003445

echo "An hour from now      : ", getLocalTime(getTime()) + 1.hours
# An hour from now      : 2017-10-21T00:24:55-04:00

echo "An hour from (UTC) now: ", getGmTime(getTime()) + initInterval(0,0,0,1)
# An hour from (UTC) now: 2017-10-21T04:24:55+00:00
