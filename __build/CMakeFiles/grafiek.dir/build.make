# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/niels/repository/personal/grafiek

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/niels/repository/personal/grafiek/__build

# Include any dependencies generated for this target.
include CMakeFiles/grafiek.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/grafiek.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/grafiek.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/grafiek.dir/flags.make

CMakeFiles/grafiek.dir/src/test.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/test.cpp.o: /home/niels/repository/personal/grafiek/src/test.cpp
CMakeFiles/grafiek.dir/src/test.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/grafiek.dir/src/test.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/test.cpp.o -MF CMakeFiles/grafiek.dir/src/test.cpp.o.d -o CMakeFiles/grafiek.dir/src/test.cpp.o -c /home/niels/repository/personal/grafiek/src/test.cpp

CMakeFiles/grafiek.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/test.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/test.cpp > CMakeFiles/grafiek.dir/src/test.cpp.i

CMakeFiles/grafiek.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/test.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/test.cpp -o CMakeFiles/grafiek.dir/src/test.cpp.s

CMakeFiles/grafiek.dir/src/draw/draw.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/draw.cpp.o: /home/niels/repository/personal/grafiek/src/draw/draw.cpp
CMakeFiles/grafiek.dir/src/draw/draw.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/grafiek.dir/src/draw/draw.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/draw.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/draw.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/draw.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/draw.cpp

CMakeFiles/grafiek.dir/src/draw/draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/draw.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/draw.cpp > CMakeFiles/grafiek.dir/src/draw/draw.cpp.i

CMakeFiles/grafiek.dir/src/draw/draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/draw.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/draw.cpp -o CMakeFiles/grafiek.dir/src/draw/draw.cpp.s

CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o: /home/niels/repository/personal/grafiek/src/draw/addSquare.cpp
CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/addSquare.cpp

CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/addSquare.cpp > CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.i

CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/addSquare.cpp -o CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.s

CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o: /home/niels/repository/personal/grafiek/src/draw/addPlot.cpp
CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/addPlot.cpp

CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/addPlot.cpp > CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.i

CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/addPlot.cpp -o CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.s

CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o: /home/niels/repository/personal/grafiek/src/draw/addBackground.cpp
CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/addBackground.cpp

CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/addBackground.cpp > CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.i

CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/addBackground.cpp -o CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.s

CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o: /home/niels/repository/personal/grafiek/src/draw/addHeader.cpp
CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/addHeader.cpp

CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/addHeader.cpp > CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.i

CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/addHeader.cpp -o CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.s

CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o: /home/niels/repository/personal/grafiek/src/draw/addSize.cpp
CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o -MF CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o.d -o CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o -c /home/niels/repository/personal/grafiek/src/draw/addSize.cpp

CMakeFiles/grafiek.dir/src/draw/addSize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/draw/addSize.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/draw/addSize.cpp > CMakeFiles/grafiek.dir/src/draw/addSize.cpp.i

CMakeFiles/grafiek.dir/src/draw/addSize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/draw/addSize.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/draw/addSize.cpp -o CMakeFiles/grafiek.dir/src/draw/addSize.cpp.s

CMakeFiles/grafiek.dir/src/canvas/font.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/canvas/font.cpp.o: /home/niels/repository/personal/grafiek/src/canvas/font.cpp
CMakeFiles/grafiek.dir/src/canvas/font.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/grafiek.dir/src/canvas/font.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/canvas/font.cpp.o -MF CMakeFiles/grafiek.dir/src/canvas/font.cpp.o.d -o CMakeFiles/grafiek.dir/src/canvas/font.cpp.o -c /home/niels/repository/personal/grafiek/src/canvas/font.cpp

CMakeFiles/grafiek.dir/src/canvas/font.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/canvas/font.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/canvas/font.cpp > CMakeFiles/grafiek.dir/src/canvas/font.cpp.i

CMakeFiles/grafiek.dir/src/canvas/font.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/canvas/font.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/canvas/font.cpp -o CMakeFiles/grafiek.dir/src/canvas/font.cpp.s

CMakeFiles/grafiek.dir/src/color/hex.cpp.o: CMakeFiles/grafiek.dir/flags.make
CMakeFiles/grafiek.dir/src/color/hex.cpp.o: /home/niels/repository/personal/grafiek/src/color/hex.cpp
CMakeFiles/grafiek.dir/src/color/hex.cpp.o: CMakeFiles/grafiek.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/grafiek.dir/src/color/hex.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/grafiek.dir/src/color/hex.cpp.o -MF CMakeFiles/grafiek.dir/src/color/hex.cpp.o.d -o CMakeFiles/grafiek.dir/src/color/hex.cpp.o -c /home/niels/repository/personal/grafiek/src/color/hex.cpp

CMakeFiles/grafiek.dir/src/color/hex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/grafiek.dir/src/color/hex.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niels/repository/personal/grafiek/src/color/hex.cpp > CMakeFiles/grafiek.dir/src/color/hex.cpp.i

CMakeFiles/grafiek.dir/src/color/hex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/grafiek.dir/src/color/hex.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niels/repository/personal/grafiek/src/color/hex.cpp -o CMakeFiles/grafiek.dir/src/color/hex.cpp.s

# Object files for target grafiek
grafiek_OBJECTS = \
"CMakeFiles/grafiek.dir/src/test.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/draw.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o" \
"CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o" \
"CMakeFiles/grafiek.dir/src/canvas/font.cpp.o" \
"CMakeFiles/grafiek.dir/src/color/hex.cpp.o"

# External object files for target grafiek
grafiek_EXTERNAL_OBJECTS =

grafiek: CMakeFiles/grafiek.dir/src/test.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/draw.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/addSquare.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/addPlot.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/addBackground.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/addHeader.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/draw/addSize.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/canvas/font.cpp.o
grafiek: CMakeFiles/grafiek.dir/src/color/hex.cpp.o
grafiek: CMakeFiles/grafiek.dir/build.make
grafiek: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
grafiek: CMakeFiles/grafiek.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/niels/repository/personal/grafiek/__build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable grafiek"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/grafiek.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/grafiek.dir/build: grafiek
.PHONY : CMakeFiles/grafiek.dir/build

CMakeFiles/grafiek.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/grafiek.dir/cmake_clean.cmake
.PHONY : CMakeFiles/grafiek.dir/clean

CMakeFiles/grafiek.dir/depend:
	cd /home/niels/repository/personal/grafiek/__build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/niels/repository/personal/grafiek /home/niels/repository/personal/grafiek /home/niels/repository/personal/grafiek/__build /home/niels/repository/personal/grafiek/__build /home/niels/repository/personal/grafiek/__build/CMakeFiles/grafiek.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/grafiek.dir/depend
