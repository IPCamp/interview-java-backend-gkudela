# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild

# Utility rule file for llama.cpp-populate.

# Include the progress variables for this target.
include CMakeFiles/llama.cpp-populate.dir/progress.make

CMakeFiles/llama.cpp-populate: CMakeFiles/llama.cpp-populate-complete


CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-mkdir
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-update
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-patch
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-build
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install
CMakeFiles/llama.cpp-populate-complete: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'llama.cpp-populate'"
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles/llama.cpp-populate-complete
	/usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-done

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E echo_append
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'llama.cpp-populate'"
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-src
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp
	/usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-mkdir

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-gitinfo.txt
llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps && /usr/bin/cmake -P /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/tmp/llama.cpp-populate-gitclone.cmake
	cd /home/qdi/java/java-llama.cpp/build/_deps && /usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-update: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-src && /usr/bin/cmake -P /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/tmp/llama.cpp-populate-gitupdate.cmake

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-patch: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'llama.cpp-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-patch

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure: llama.cpp-populate-prefix/tmp/llama.cpp-populate-cfgcmd.txt
llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E echo_append
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-build: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E echo_append
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-build

llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-test: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'llama.cpp-populate'"
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E echo_append
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-build && /usr/bin/cmake -E touch /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-test

llama.cpp-populate: CMakeFiles/llama.cpp-populate
llama.cpp-populate: CMakeFiles/llama.cpp-populate-complete
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-install
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-mkdir
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-download
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-update
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-patch
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-configure
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-build
llama.cpp-populate: llama.cpp-populate-prefix/src/llama.cpp-populate-stamp/llama.cpp-populate-test
llama.cpp-populate: CMakeFiles/llama.cpp-populate.dir/build.make

.PHONY : llama.cpp-populate

# Rule to build all files generated by this target.
CMakeFiles/llama.cpp-populate.dir/build: llama.cpp-populate

.PHONY : CMakeFiles/llama.cpp-populate.dir/build

CMakeFiles/llama.cpp-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/llama.cpp-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/llama.cpp-populate.dir/clean

CMakeFiles/llama.cpp-populate.dir/depend:
	cd /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild /home/qdi/java/java-llama.cpp/build/_deps/llama.cpp-subbuild/CMakeFiles/llama.cpp-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/llama.cpp-populate.dir/depend

