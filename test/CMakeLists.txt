if(CONAN_CATCH2_ROOT_DEBUG)
  include(${CONAN_CATCH2_ROOT_DEBUG}/lib/cmake/Catch2/Catch.cmake)
else()
  include(${CONAN_CATCH2_ROOT}/lib/cmake/Catch2/Catch.cmake)
endif()

add_library(catch_main STATIC catch_main.cc)
target_link_libraries(catch_main PUBLIC CONAN_PKG::catch2)

add_executable(pangofin_tests tests.cc)
target_link_libraries(pangofin_tests PRIVATE
  cfg_warnings
  cfg_options
  catch_main)

catch_discover_tests(pangofin_tests TEST_PREFIX
  "ceaunit_"
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=ceaunit_tests.xml)

add_executable(pangofin_constexpr_tests constexpr_tests.cc)
target_link_libraries(pangofin_constexpr_tests PRIVATE
  cfg_warnings
  cfg_options
  catch_main)

catch_discover_tests(pangofin_constexpr_tests TEST_PREFIX
  "ceaconstexpr_"
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=ceaconstexpr_tests.xml)

add_executable(relaxed_constexpr_tests constexpr_tests.cc)
target_link_libraries(relaxed_constexpr_tests PRIVATE
  cfg_warnings
  cfg_options
  catch_main)
target_compile_definitions(relaxed_constexpr_tests PRIVATE
  PRIVATE
  -DCATCH_CONFIG_RUNTIME_STATIC_REQUIRE)

catch_discover_tests(relaxed_constexpr_tests TEST_PREFIX
  "relaxed_ceaconstexpr_"
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=relaxed_ceaconstexpr_tests.xml)
