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

src/CMakeFiles/example.dir/TP1/Banco.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP1/Banco.cpp.o: ../src/TP1/Banco.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/example.dir/TP1/Banco.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP1/Banco.cpp.o -c /app/src/TP1/Banco.cpp

src/CMakeFiles/example.dir/TP1/Banco.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP1/Banco.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP1/Banco.cpp > CMakeFiles/example.dir/TP1/Banco.cpp.i

src/CMakeFiles/example.dir/TP1/Banco.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP1/Banco.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP1/Banco.cpp -o CMakeFiles/example.dir/TP1/Banco.cpp.s

src/CMakeFiles/example.dir/TP1/Cliente.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP1/Cliente.cpp.o: ../src/TP1/Cliente.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/example.dir/TP1/Cliente.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP1/Cliente.cpp.o -c /app/src/TP1/Cliente.cpp

src/CMakeFiles/example.dir/TP1/Cliente.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP1/Cliente.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP1/Cliente.cpp > CMakeFiles/example.dir/TP1/Cliente.cpp.i

src/CMakeFiles/example.dir/TP1/Cliente.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP1/Cliente.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP1/Cliente.cpp -o CMakeFiles/example.dir/TP1/Cliente.cpp.s

src/CMakeFiles/example.dir/TP1/Conta.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP1/Conta.cpp.o: ../src/TP1/Conta.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/example.dir/TP1/Conta.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP1/Conta.cpp.o -c /app/src/TP1/Conta.cpp

src/CMakeFiles/example.dir/TP1/Conta.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP1/Conta.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP1/Conta.cpp > CMakeFiles/example.dir/TP1/Conta.cpp.i

src/CMakeFiles/example.dir/TP1/Conta.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP1/Conta.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP1/Conta.cpp -o CMakeFiles/example.dir/TP1/Conta.cpp.s

src/CMakeFiles/example.dir/TP1/Date.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP1/Date.cpp.o: ../src/TP1/Date.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/example.dir/TP1/Date.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP1/Date.cpp.o -c /app/src/TP1/Date.cpp

src/CMakeFiles/example.dir/TP1/Date.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP1/Date.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP1/Date.cpp > CMakeFiles/example.dir/TP1/Date.cpp.i

src/CMakeFiles/example.dir/TP1/Date.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP1/Date.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP1/Date.cpp -o CMakeFiles/example.dir/TP1/Date.cpp.s

src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.o: ../src/TP1/Movimentacao.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP1/Movimentacao.cpp.o -c /app/src/TP1/Movimentacao.cpp

src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP1/Movimentacao.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP1/Movimentacao.cpp > CMakeFiles/example.dir/TP1/Movimentacao.cpp.i

src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP1/Movimentacao.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP1/Movimentacao.cpp -o CMakeFiles/example.dir/TP1/Movimentacao.cpp.s

src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.o: ../src/TP3/BancoTP3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP3/BancoTP3.cpp.o -c /app/src/TP3/BancoTP3.cpp

src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP3/BancoTP3.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP3/BancoTP3.cpp > CMakeFiles/example.dir/TP3/BancoTP3.cpp.i

src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP3/BancoTP3.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP3/BancoTP3.cpp -o CMakeFiles/example.dir/TP3/BancoTP3.cpp.s

src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o: ../src/TP3/ClienteTP3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o -c /app/src/TP3/ClienteTP3.cpp

src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP3/ClienteTP3.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP3/ClienteTP3.cpp > CMakeFiles/example.dir/TP3/ClienteTP3.cpp.i

src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP3/ClienteTP3.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP3/ClienteTP3.cpp -o CMakeFiles/example.dir/TP3/ClienteTP3.cpp.s

src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.o: ../src/TP3/ContaTP3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP3/ContaTP3.cpp.o -c /app/src/TP3/ContaTP3.cpp

src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP3/ContaTP3.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP3/ContaTP3.cpp > CMakeFiles/example.dir/TP3/ContaTP3.cpp.i

src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP3/ContaTP3.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP3/ContaTP3.cpp -o CMakeFiles/example.dir/TP3/ContaTP3.cpp.s

src/CMakeFiles/example.dir/TP3/WebInterface.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/TP3/WebInterface.cpp.o: ../src/TP3/WebInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/example.dir/TP3/WebInterface.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/TP3/WebInterface.cpp.o -c /app/src/TP3/WebInterface.cpp

src/CMakeFiles/example.dir/TP3/WebInterface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/TP3/WebInterface.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/TP3/WebInterface.cpp > CMakeFiles/example.dir/TP3/WebInterface.cpp.i

src/CMakeFiles/example.dir/TP3/WebInterface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/TP3/WebInterface.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/TP3/WebInterface.cpp -o CMakeFiles/example.dir/TP3/WebInterface.cpp.s

src/CMakeFiles/example.dir/example.cpp.o: src/CMakeFiles/example.dir/flags.make
src/CMakeFiles/example.dir/example.cpp.o: ../src/example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/example.dir/example.cpp.o"
	cd /app/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example.dir/example.cpp.o -c /app/src/example.cpp

src/CMakeFiles/example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example.dir/example.cpp.i"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/src/example.cpp > CMakeFiles/example.dir/example.cpp.i

src/CMakeFiles/example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example.dir/example.cpp.s"
	cd /app/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/src/example.cpp -o CMakeFiles/example.dir/example.cpp.s

# Object files for target example
example_OBJECTS = \
"CMakeFiles/example.dir/TP1/Banco.cpp.o" \
"CMakeFiles/example.dir/TP1/Cliente.cpp.o" \
"CMakeFiles/example.dir/TP1/Conta.cpp.o" \
"CMakeFiles/example.dir/TP1/Date.cpp.o" \
"CMakeFiles/example.dir/TP1/Movimentacao.cpp.o" \
"CMakeFiles/example.dir/TP3/BancoTP3.cpp.o" \
"CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o" \
"CMakeFiles/example.dir/TP3/ContaTP3.cpp.o" \
"CMakeFiles/example.dir/TP3/WebInterface.cpp.o" \
"CMakeFiles/example.dir/example.cpp.o"

# External object files for target example
example_EXTERNAL_OBJECTS =

src/example: src/CMakeFiles/example.dir/TP1/Banco.cpp.o
src/example: src/CMakeFiles/example.dir/TP1/Cliente.cpp.o
src/example: src/CMakeFiles/example.dir/TP1/Conta.cpp.o
src/example: src/CMakeFiles/example.dir/TP1/Date.cpp.o
src/example: src/CMakeFiles/example.dir/TP1/Movimentacao.cpp.o
src/example: src/CMakeFiles/example.dir/TP3/BancoTP3.cpp.o
src/example: src/CMakeFiles/example.dir/TP3/ClienteTP3.cpp.o
src/example: src/CMakeFiles/example.dir/TP3/ContaTP3.cpp.o
src/example: src/CMakeFiles/example.dir/TP3/WebInterface.cpp.o
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
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable example"
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

