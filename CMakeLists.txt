cmake_minimum_required(VERSION 3.17)
project(SEED LANGUAGES C CXX VERSION 0.2.6)
set(CMAKE_CXX_STANDARD 17)
set_property(GLOBAL PROPERTY CTEST_TARGETS_ADDED 1)
set(BUILD_TESTING OFF CACHE BOOL
  "Toggle tests configs. Default OFF")

include_directories(inc/)
add_subdirectory(src/)

# //++++ TESTING ++++//
if(BUILD_TESTING)
  add_subdirectory(test/)
  include(CTest)
  enable_testing()
  add_test(NAME unit_test COMMAND SCN_vectorsSizeAndCapacity)
endif(BUILD_TESTING)
# ++++++ END ++++++++