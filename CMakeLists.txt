<<<<<<< HEAD
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
=======
cmake_minimum_required(VERSION 3.1)
project(pangofin)

# Change all `pangofin` to your project name!
set(pangofin-build_tests OFF CACHE BOOL "Whether to build tests")

# Enable C++14
set (CMAKE_CXX_STANDARD 14)

################################
# Find thread
################################
find_package(Threads REQUIRED)

################################
# Catch
################################
set(Catch_INCLUDE_DIR vendor/Catch/include)

##################################
# Spdlog
##################################
set(spdlog_SOURCE_DIR vendor/spdlog)
include_directories(${spdlog_SOURCE_DIR}/include)


##################################
include_directories(src)

set(pangofin_SOURCE src/module/pangofin.hpp src/module/pangofin.cc)

add_library(pangofin STATIC ${pangofin_SOURCE})
target_link_libraries(pangofin ${CMAKE_THREAD_LIBS_INIT})

if (pangofin-build_tests)
    enable_testing()

    add_executable(pangofin-test test/pangofin_test.cc test/test_main.cc)
    target_include_directories(pangofin-test PUBLIC ${Catch_INCLUDE_DIR})
    target_link_libraries(pangofin-test pangofin)


    add_test(pangofin_test pangofin-test)
endif()
>>>>>>> 55394fc87044107ef7e97ed564c57bee0111e393
