set(CMAKE_CXX_STANDARD 17)
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(
    STATUS "Sets build types to 'RelWithDebInfo' as default.")
  set(CMAKE_BUILD_TYPE
    RelWithDebInfo
    CACHE STRING "Select build type." FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE
    PROPERTY
    STRINGS
      "Debug"
      "Release"
      "MinSizeRel"
      "RelWithDebInfo")
endif()

find_program(CCACHE ccache)
if(CCACHE)
  message("Using ccache.")
  set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE})
else()
  message("ccache not found. Skipping.")
endif(CCACHE)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(ENABLE_IPO
  "Enable Interprocedural Optimization, aka Link-Time Optimization (LTO)."
  OFF)

if(ENABLE_IPO)
  include(CheckIPOSupported)
  check_ipo_supported(RESULT result OUTPUT output)
  if(result)
    set(CMAKE_INTERPROCEDURAL_OPTIMIZATION ON)
  else()
    message(SEND_ERROR "IPO not supported: ${output}")
  endif(result)
endif(ENABLE_IPO)

