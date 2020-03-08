cmake_minimum_required(VERSION 3.15)
project(pangofin CXX)
include(cmake/StandardProjectSettings.cmake)

add_library(cfg_options INTERFACE)
target_compile_features(cfg_options INTERFACE)

add_library(cfg_warnings INTERFACE)

include(cmake/CompilerWarnings.cmake)
set_cfg_warnings(cfg_warnings)

include(cmake/Sanitizers.cmake)
enable_sanitizers(cfg_options)

option(BUILD_SHARED_LIBS "Compile to shared libraries." OFF)
option(ENABLE_TESTING "Enable test builds." ON)
option(ENABLE_FUZZING "Enable test builds." ON)

option(ENABLE_PCH "Enable precompiled headers" OFF)
if(ENABLE_PCH)
  target_precompile_headers(cfg_options INTERFACE <vector> <string> <map> <utility>)
endif()

include(cmake/Conan.cmake)
run_conan()

if(ENABLE_TESTING)
  enable_testing()
  include(Catch)
  message("Building tests. FYI constexpr testing.")
  add_subdirectory(test)
endif()

if(ENABLE_FUZZING)
  message("Building fuzzy tests using LLVM's LibFuzzer.")
  add_subdirectory(fuzz)
endif()

add_subdirectory(src)
