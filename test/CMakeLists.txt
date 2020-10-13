find_package(Catch2 CONFIG)

add_library(MAIN.X
  test_main.cc)
target_link_libraries(MAIN.X
  Catch2::Catch2)
add_executable(SCN_vectorsSizeAndCapacity test_seed_scn_vector.cc)
target_link_libraries(SCN_vectorsSizeAndCapacity
  MAIN.X
  RUN)