# CMake

This repository explains CMake for beginners, who would like to start C and C++ projects.

CMake is a scripting languages dedicated for building C/C++ projects. CMake generates build systems for C++ projects from an abstract script written in the CMake language. CMake provides an interface to specify build options and processes, without being concerned with compiler or operating system specific details.



### Installation:

Install CMake based on your system requirement from this 

[CMake]: https://cmake.org/install/	"CMake"

### hello.txt

```
message("Hello world!")         # A message to print
```

command prompt command

```
cmake -P hello.txt
```

This prints below output in command prompt.

```
Hello world!
```



## To Build CMake project:

#### CMAKE file:

```
cmake_minimum_required(VERSION 3.24)
set( CMAKE_CXX_COMPILER "C:/MinGW/bin/g++.exe" )
set( CMAKE_C_COMPILER "C:/MinGW/bin/gcc.exe" )
project(gravity)

add_executable(${PROJECT_NAME} "main.cpp" "constants.h")
```

#### CMD commands:

```
cmake ../SOURCE_PATH -G "MinGW Makefiles"
```

