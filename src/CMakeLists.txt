add_library(RUN
  seed.cc)

add_executable(${PROJECT_NAME} main.cc)
target_link_libraries(${PROJECT_NAME} RUN)