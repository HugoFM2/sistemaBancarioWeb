# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/build

# Include any dependencies generated for this target.
include src/CMakeFiles/example.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/example.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/example.dir/flags.make

src/CMakeFiles/example.dir/example.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/example.cpp.o: ../src/example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/example.dir/example.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/example.cpp.o -c /app/src/example.cpp

src/CMakeFiles/example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/example.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/example.cpp > CMakeFiles/example.dir/example.cpp.i

src/CMakeFiles/example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/example.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/example.cpp -o CMakeFiles/example.dir/example.cpp.s

# Object files for target example
example_OBJECTS = \
"CMakeFiles/example.dir/example.cpp.o"

# External object files for target example
example_EXTERNAL_OBJECTS =

src/example: src/CMakeFiles/example.dir/example.cpp.o
src/example: src/CMakeFiles/example.dir/build.make
src/example: /usr/lib/x86_64-linux-gnu/libboost_system.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_thread.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_system.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_thread.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
src/example: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
src/example: src/CMakeFiles/example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example"
	cd /app/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/example.dir/build: src/example

.PHONY : src/CMakeFiles/example.dir/build

src/CMakeFiles/example.dir/clean:
	cd /app/build/src && $(CMAKE_COMMAND) -P CMakeFiles/example.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/example.dir/clean

src/CMakeFiles/example.dir/depend:
	cd /app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app/src /app/build /app/build/src /app/build/src/CMakeFiles/example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/example.dir/depend

