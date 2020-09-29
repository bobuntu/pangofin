cmake_minimum_required(VERSION 3.17)
project(SODA VERSION 0.2.6)
set_property(GLOBAL PROPERTY CTEST_TARGETS_ADDED 1)

include_directories(inc/)
add_subdirectory(src/)
add_subdirectory(test/)

include(CTest)
enable_testing()
add_test(NAME unit_test COMMAND TEST)