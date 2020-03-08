add_executable(fuzzy_test fuzzy_test.cc)
target_link_libraries(fuzzy_test
  PRIVATE
  cfg_options
  cfg_warnings
  CONAN_PKG::fmt
  -coverage
  -fsanitize=fuzzer,undefined,address)
target_compile_options(fuzzy_test
  PRIVATE
  -fsanitize=fuzzer,undefined,address)
set(FUZZY_RUNTIME
  10
  CACHE STRING "Duration in sec to run fuzzy tests")
add_test(NAME fuzzy_test_run COMMAND fuzzy_test
  -max_total_time=${FUZZY_RUNTIME})