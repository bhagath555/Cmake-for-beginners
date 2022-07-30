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

## Access CMAKE current path:

```cmake
set(dir ${CMAKE_CURRENT_SOURCE_DIR}) # This is to access the current path of the file
message(${dir}) 
# ${dir} -> With this we can access the dir variable set in first line. Above command prints it.
```



## CMAKE: C/C++ Executables and static header only library



#### CMD commands:

```
cmake ../SOURCE_PATH -G "MinGW Makefiles"
```



## STATIC and SHARED Library:

In programming context library is something which has some sort of that code which is pre compiled and could get reused in any program for some specific functionality or feature.

Now on the basis of execution and storage of this code library is classified in two types i.e Static library and Shared library.

Following are the important differences between Static library and Shared library.

| Sr. No. |      Key      |                        Static library                        |                        Shared library                        |
| ------- | :-----------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| 1       |  Definition   | Static library is the library in which all the code to execute the file is in one executable file and this file get copied into a target application by a compiler, linker, or binder, producing an object file and a stand-alone executable. | On other hand Shared library is the library in which only the address of library is mentioned in the target program while all the functions and code of library are in a special place in memory space, and every program can access them, without having multiple copies of them. |
| 2       |    Import     | As mentioned in above point static library are resolved in a caller at compile-time and copied into a target application by a compiler, linker, or binder. | Shared libraries are get import at the time of execution of target program by the Operating system itself. |
| 3       |     Size      | Static libraries are large in size as because external programs are built in the executable file. | On other Shared libraries are much smaller as because there is only one copy of dynamic library that is kept in memory at the time of execution only otherwise its location is remote. |
| 4       |  Compilation  | For static libraries recompilation is required if any changes were applied to external files. | On other hand for Shared libraries there is no need to recompile the executable. |
| 5       |  Performance  | Static libraries take longer to execute, because loading into the memory happens every time while executing. | While Shared libraries are faster because shared library code is already in the memory. |
| 6       | Compatibility | In Static library no compatibility issue has been observed.  | On other hand in case of Shared library has compatibility issue as target program will not work if library gets removed from the system . |
