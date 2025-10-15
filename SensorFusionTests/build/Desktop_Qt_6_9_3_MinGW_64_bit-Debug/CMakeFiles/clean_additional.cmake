# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\SensorFusionTests_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\SensorFusionTests_autogen.dir\\ParseCache.txt"
  "SensorFusionTests_autogen"
  )
endif()
