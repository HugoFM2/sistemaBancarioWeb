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

# Utility rule file for amalgamation.

# Include the progress variables for this target.
include CMakeFiles/amalgamation.dir/progress.make

CMakeFiles/amalgamation: amalgamate/crow_all.h


amalgamate/crow_all.h: ../include/*.h
amalgamate/crow_all.h: ../include/crow/*.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating amalgamate/crow_all.h"
	cd /app/build/amalgamate && python /app/amalgamate/merge_all.py /app/include
	cd /app/build/amalgamate && /usr/local/bin/cmake -E copy /app/build/amalgamate/crow_all.h /app/amalgamate

amalgamation: CMakeFiles/amalgamation
amalgamation: amalgamate/crow_all.h
amalgamation: CMakeFiles/amalgamation.dir/build.make

.PHONY : amalgamation

# Rule to build all files generated by this target.
CMakeFiles/amalgamation.dir/build: amalgamation

.PHONY : CMakeFiles/amalgamation.dir/build

CMakeFiles/amalgamation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/amalgamation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/amalgamation.dir/clean

CMakeFiles/amalgamation.dir/depend:
	cd /app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app /app/build /app/build /app/build/CMakeFiles/amalgamation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/amalgamation.dir/depend
