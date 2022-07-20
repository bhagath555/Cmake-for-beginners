message("\nHello From Subdir_1")
message(${CMAKE_CURRENT_SOURCE_DIR}) # Current file directory.
message(${PROJECT_SOURCE_DIR}) # Initial source file directory.
List(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/subdir_2")
include(inc_mod)