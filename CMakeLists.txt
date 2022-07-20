cmake_minimum_required(VERSION 3.23)
project(CMAKE)
message("Hello from top directory")
message(${CMAKE_CURRENT_SOURCE_DIR})
message(${PROJECT_SOURCE_DIR}) # Top Cmake file directory
# add_subdirectory is used to add folders that contain source code to be compiled.
add_subdirectory("subdir_1")

# adding .cmake files.
# files with .cmake extension are called module files. This modules may contain 
# functions, macros, instruction to install packages and so forth.
# to include them in cmake we no need to specify this (.cmake) extension of the files. name is enough
# To allow compiler to find this files, we need to add the directories that containing this .cmake 
# files to CMAKE_MODULE_PATH list variable. 
# CMAKE_MODULE_PATH is a list containing path info, so we append any new module path. 

List(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/subdir_2")
include(inc_mod) 
# include is used to add modules 
