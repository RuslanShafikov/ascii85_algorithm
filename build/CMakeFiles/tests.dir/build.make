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
include CMakeFiles/tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tests.dir/flags.make

CMakeFiles/tests.dir/codegen:
.PHONY : CMakeFiles/tests.dir/codegen

CMakeFiles/tests.dir/coder.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/coder.cpp.o: /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp
CMakeFiles/tests.dir/coder.cpp.o: CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tests.dir/coder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tests.dir/coder.cpp.o -MF CMakeFiles/tests.dir/coder.cpp.o.d -o CMakeFiles/tests.dir/coder.cpp.o -c /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp

CMakeFiles/tests.dir/coder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/coder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp > CMakeFiles/tests.dir/coder.cpp.i

CMakeFiles/tests.dir/coder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/coder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruslan/CLionProjects/ascii85_algorithm/coder.cpp -o CMakeFiles/tests.dir/coder.cpp.s

CMakeFiles/tests.dir/test/main_test.cpp.o: CMakeFiles/tests.dir/flags.make
CMakeFiles/tests.dir/test/main_test.cpp.o: /home/ruslan/CLionProjects/ascii85_algorithm/test/main_test.cpp
CMakeFiles/tests.dir/test/main_test.cpp.o: CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tests.dir/test/main_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tests.dir/test/main_test.cpp.o -MF CMakeFiles/tests.dir/test/main_test.cpp.o.d -o CMakeFiles/tests.dir/test/main_test.cpp.o -c /home/ruslan/CLionProjects/ascii85_algorithm/test/main_test.cpp

CMakeFiles/tests.dir/test/main_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tests.dir/test/main_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ruslan/CLionProjects/ascii85_algorithm/test/main_test.cpp > CMakeFiles/tests.dir/test/main_test.cpp.i

CMakeFiles/tests.dir/test/main_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tests.dir/test/main_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ruslan/CLionProjects/ascii85_algorithm/test/main_test.cpp -o CMakeFiles/tests.dir/test/main_test.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/coder.cpp.o" \
"CMakeFiles/tests.dir/test/main_test.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests: CMakeFiles/tests.dir/coder.cpp.o
tests: CMakeFiles/tests.dir/test/main_test.cpp.o
tests: CMakeFiles/tests.dir/build.make
tests: CMakeFiles/tests.dir/compiler_depend.ts
tests: /usr/lib/x86_64-linux-gnu/libgtest_main.a
tests: /usr/lib/x86_64-linux-gnu/libgtest.a
tests: CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tests.dir/build: tests
.PHONY : CMakeFiles/tests.dir/build

CMakeFiles/tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests.dir/clean

CMakeFiles/tests.dir/depend:
	cd /home/ruslan/CLionProjects/ascii85_algorithm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ruslan/CLionProjects/ascii85_algorithm /home/ruslan/CLionProjects/ascii85_algorithm /home/ruslan/CLionProjects/ascii85_algorithm/build /home/ruslan/CLionProjects/ascii85_algorithm/build /home/ruslan/CLionProjects/ascii85_algorithm/build/CMakeFiles/tests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tests.dir/depend

