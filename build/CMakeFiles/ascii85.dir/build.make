# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1461/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1461/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ruslan/CLionProjects/ascii85_algorithm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ruslan/CLionProjects/ascii85_algorithm/build

# Include any dependencies generated for this target.
include CMakeFiles/ascii85.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ascii85.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ascii85.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ascii85.dir/flags.make

CMakeFiles/ascii85.dir/codegen:
.PHONY : CMakeFiles/ascii85.dir/codegen

CMakeFiles/ascii85.dir/main.cpp.o: CMakeFiles/ascii85.dir/flags.make
CMakeFiles/ascii85.dir/main.cpp.o: /home/ruslan/CLionProjects/ascii85_algorithm/main.cpp
CMakeFiles/ascii85.dir/main.cpp.o: CMakeFiles/ascii85.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ascii85.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ascii85.dir/main.cpp.o -MF CMakeFiles/ascii85.dir/main.cpp.o.d -o CMakeFiles/ascii85.dir/main.cpp.o -c /home/ruslan/CLionProjects/ascii85_algorithm/main.cpp

CMakeFiles/ascii85.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ascii85.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruslan/CLionProjects/ascii85_algorithm/main.cpp > CMakeFiles/ascii85.dir/main.cpp.i

CMakeFiles/ascii85.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ascii85.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruslan/CLionProjects/ascii85_algorithm/main.cpp -o CMakeFiles/ascii85.dir/main.cpp.s

CMakeFiles/ascii85.dir/coder.cpp.o: CMakeFiles/ascii85.dir/flags.make
CMakeFiles/ascii85.dir/coder.cpp.o: /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp
CMakeFiles/ascii85.dir/coder.cpp.o: CMakeFiles/ascii85.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ascii85.dir/coder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ascii85.dir/coder.cpp.o -MF CMakeFiles/ascii85.dir/coder.cpp.o.d -o CMakeFiles/ascii85.dir/coder.cpp.o -c /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp

CMakeFiles/ascii85.dir/coder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ascii85.dir/coder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp > CMakeFiles/ascii85.dir/coder.cpp.i

CMakeFiles/ascii85.dir/coder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ascii85.dir/coder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp -o CMakeFiles/ascii85.dir/coder.cpp.s

# Object files for target ascii85
ascii85_OBJECTS = \
"CMakeFiles/ascii85.dir/main.cpp.o" \
"CMakeFiles/ascii85.dir/coder.cpp.o"

# External object files for target ascii85
ascii85_EXTERNAL_OBJECTS =

ascii85: CMakeFiles/ascii85.dir/main.cpp.o
ascii85: CMakeFiles/ascii85.dir/coder.cpp.o
ascii85: CMakeFiles/ascii85.dir/build.make
ascii85: CMakeFiles/ascii85.dir/compiler_depend.ts
ascii85: CMakeFiles/ascii85.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ascii85"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ascii85.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ascii85.dir/build: ascii85
.PHONY : CMakeFiles/ascii85.dir/build

CMakeFiles/ascii85.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ascii85.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ascii85.dir/clean

CMakeFiles/ascii85.dir/depend:
	cd /home/ruslan/CLionProjects/ascii85_algorithm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruslan/CLionProjects/ascii85_algorithm /home/ruslan/CLionProjects/ascii85_algorithm /home/ruslan/CLionProjects/ascii85_algorithm/build /home/ruslan/CLionProjects/ascii85_algorithm/build /home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles/ascii85.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ascii85.dir/depend

