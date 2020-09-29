add_library(RUN
  soda.cc)

add_executable(${PROJECT_NAME} main.cc)
target_link_libraries(${PROJECT_NAME} RUN)