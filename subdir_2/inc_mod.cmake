# files with .cmake extension are called module files. 
# to include them in cmake we no need to specify this (.cmake) extension of the files. name is enough
# To allow compiler to find this files, we need to add the directories that containing this .cmake 
# files to CMAKE_MODULE_PATH list variable. 
# CMAKE_MODULE_PATH is a list containing path info, so we append any new module path. 
#  

message("\nHello From subdir_2")
message(${CMAKE_CURRENT_SOURCE_DIR}) # Current file directory.
message(${PROJECT_SOURCE_DIR}) # # Initial CMakeLists directory.