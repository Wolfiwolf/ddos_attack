# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wolfi/dev/desktop/ddos_attack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wolfi/dev/desktop/ddos_attack

# Include any dependencies generated for this target.
include CMakeFiles/ddos_attack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ddos_attack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ddos_attack.dir/flags.make

CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o: CMakeFiles/ddos_attack.dir/flags.make
CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o: src/tcp_client/tcp_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wolfi/dev/desktop/ddos_attack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o   -c /home/wolfi/dev/desktop/ddos_attack/src/tcp_client/tcp_client.c

CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wolfi/dev/desktop/ddos_attack/src/tcp_client/tcp_client.c > CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.i

CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wolfi/dev/desktop/ddos_attack/src/tcp_client/tcp_client.c -o CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.s

CMakeFiles/ddos_attack.dir/src/main.c.o: CMakeFiles/ddos_attack.dir/flags.make
CMakeFiles/ddos_attack.dir/src/main.c.o: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wolfi/dev/desktop/ddos_attack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ddos_attack.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ddos_attack.dir/src/main.c.o   -c /home/wolfi/dev/desktop/ddos_attack/src/main.c

CMakeFiles/ddos_attack.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ddos_attack.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wolfi/dev/desktop/ddos_attack/src/main.c > CMakeFiles/ddos_attack.dir/src/main.c.i

CMakeFiles/ddos_attack.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ddos_attack.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wolfi/dev/desktop/ddos_attack/src/main.c -o CMakeFiles/ddos_attack.dir/src/main.c.s

# Object files for target ddos_attack
ddos_attack_OBJECTS = \
"CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o" \
"CMakeFiles/ddos_attack.dir/src/main.c.o"

# External object files for target ddos_attack
ddos_attack_EXTERNAL_OBJECTS =

ddos_attack: CMakeFiles/ddos_attack.dir/src/tcp_client/tcp_client.c.o
ddos_attack: CMakeFiles/ddos_attack.dir/src/main.c.o
ddos_attack: CMakeFiles/ddos_attack.dir/build.make
ddos_attack: CMakeFiles/ddos_attack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wolfi/dev/desktop/ddos_attack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ddos_attack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ddos_attack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ddos_attack.dir/build: ddos_attack

.PHONY : CMakeFiles/ddos_attack.dir/build

CMakeFiles/ddos_attack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ddos_attack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ddos_attack.dir/clean

CMakeFiles/ddos_attack.dir/depend:
	cd /home/wolfi/dev/desktop/ddos_attack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wolfi/dev/desktop/ddos_attack /home/wolfi/dev/desktop/ddos_attack /home/wolfi/dev/desktop/ddos_attack /home/wolfi/dev/desktop/ddos_attack /home/wolfi/dev/desktop/ddos_attack/CMakeFiles/ddos_attack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ddos_attack.dir/depend

