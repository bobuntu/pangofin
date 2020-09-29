find_package(Catch2 CONFIG)

add_library(MAIN.X
  test_main.cc)
target_link_libraries(MAIN.X
  Catch2::Catch2)
add_executable(TEST test_soda.cc)
target_link_libraries(TEST
  MAIN.X
  RUN)