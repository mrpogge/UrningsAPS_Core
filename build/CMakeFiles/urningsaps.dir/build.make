# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build"

# Include any dependencies generated for this target.
include CMakeFiles/urningsaps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/urningsaps.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/urningsaps.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/urningsaps.dir/flags.make

CMakeFiles/urningsaps.dir/src/utils.cpp.o: CMakeFiles/urningsaps.dir/flags.make
CMakeFiles/urningsaps.dir/src/utils.cpp.o: /Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal\ of\ Statistical\ Software/UrningsAPS/main/src/utils.cpp
CMakeFiles/urningsaps.dir/src/utils.cpp.o: CMakeFiles/urningsaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/urningsaps.dir/src/utils.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/urningsaps.dir/src/utils.cpp.o -MF CMakeFiles/urningsaps.dir/src/utils.cpp.o.d -o CMakeFiles/urningsaps.dir/src/utils.cpp.o -c "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/utils.cpp"

CMakeFiles/urningsaps.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/urningsaps.dir/src/utils.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/utils.cpp" > CMakeFiles/urningsaps.dir/src/utils.cpp.i

CMakeFiles/urningsaps.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/urningsaps.dir/src/utils.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/utils.cpp" -o CMakeFiles/urningsaps.dir/src/utils.cpp.s

CMakeFiles/urningsaps.dir/src/item_selection.cpp.o: CMakeFiles/urningsaps.dir/flags.make
CMakeFiles/urningsaps.dir/src/item_selection.cpp.o: /Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal\ of\ Statistical\ Software/UrningsAPS/main/src/item_selection.cpp
CMakeFiles/urningsaps.dir/src/item_selection.cpp.o: CMakeFiles/urningsaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/urningsaps.dir/src/item_selection.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/urningsaps.dir/src/item_selection.cpp.o -MF CMakeFiles/urningsaps.dir/src/item_selection.cpp.o.d -o CMakeFiles/urningsaps.dir/src/item_selection.cpp.o -c "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/item_selection.cpp"

CMakeFiles/urningsaps.dir/src/item_selection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/urningsaps.dir/src/item_selection.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/item_selection.cpp" > CMakeFiles/urningsaps.dir/src/item_selection.cpp.i

CMakeFiles/urningsaps.dir/src/item_selection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/urningsaps.dir/src/item_selection.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/item_selection.cpp" -o CMakeFiles/urningsaps.dir/src/item_selection.cpp.s

CMakeFiles/urningsaps.dir/src/model.cpp.o: CMakeFiles/urningsaps.dir/flags.make
CMakeFiles/urningsaps.dir/src/model.cpp.o: /Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal\ of\ Statistical\ Software/UrningsAPS/main/src/model.cpp
CMakeFiles/urningsaps.dir/src/model.cpp.o: CMakeFiles/urningsaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/urningsaps.dir/src/model.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/urningsaps.dir/src/model.cpp.o -MF CMakeFiles/urningsaps.dir/src/model.cpp.o.d -o CMakeFiles/urningsaps.dir/src/model.cpp.o -c "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/model.cpp"

CMakeFiles/urningsaps.dir/src/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/urningsaps.dir/src/model.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/model.cpp" > CMakeFiles/urningsaps.dir/src/model.cpp.i

CMakeFiles/urningsaps.dir/src/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/urningsaps.dir/src/model.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/model.cpp" -o CMakeFiles/urningsaps.dir/src/model.cpp.s

CMakeFiles/urningsaps.dir/src/paired_update.cpp.o: CMakeFiles/urningsaps.dir/flags.make
CMakeFiles/urningsaps.dir/src/paired_update.cpp.o: /Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal\ of\ Statistical\ Software/UrningsAPS/main/src/paired_update.cpp
CMakeFiles/urningsaps.dir/src/paired_update.cpp.o: CMakeFiles/urningsaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/urningsaps.dir/src/paired_update.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/urningsaps.dir/src/paired_update.cpp.o -MF CMakeFiles/urningsaps.dir/src/paired_update.cpp.o.d -o CMakeFiles/urningsaps.dir/src/paired_update.cpp.o -c "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/paired_update.cpp"

CMakeFiles/urningsaps.dir/src/paired_update.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/urningsaps.dir/src/paired_update.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/paired_update.cpp" > CMakeFiles/urningsaps.dir/src/paired_update.cpp.i

CMakeFiles/urningsaps.dir/src/paired_update.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/urningsaps.dir/src/paired_update.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/paired_update.cpp" -o CMakeFiles/urningsaps.dir/src/paired_update.cpp.s

CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o: CMakeFiles/urningsaps.dir/flags.make
CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o: /Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal\ of\ Statistical\ Software/UrningsAPS/main/src/urnings_factory.cpp
CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o: CMakeFiles/urningsaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o -MF CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o.d -o CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o -c "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/urnings_factory.cpp"

CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/urnings_factory.cpp" > CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.i

CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/src/urnings_factory.cpp" -o CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.s

# Object files for target urningsaps
urningsaps_OBJECTS = \
"CMakeFiles/urningsaps.dir/src/utils.cpp.o" \
"CMakeFiles/urningsaps.dir/src/item_selection.cpp.o" \
"CMakeFiles/urningsaps.dir/src/model.cpp.o" \
"CMakeFiles/urningsaps.dir/src/paired_update.cpp.o" \
"CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o"

# External object files for target urningsaps
urningsaps_EXTERNAL_OBJECTS =

urningsaps.a: CMakeFiles/urningsaps.dir/src/utils.cpp.o
urningsaps.a: CMakeFiles/urningsaps.dir/src/item_selection.cpp.o
urningsaps.a: CMakeFiles/urningsaps.dir/src/model.cpp.o
urningsaps.a: CMakeFiles/urningsaps.dir/src/paired_update.cpp.o
urningsaps.a: CMakeFiles/urningsaps.dir/src/urnings_factory.cpp.o
urningsaps.a: CMakeFiles/urningsaps.dir/build.make
urningsaps.a: CMakeFiles/urningsaps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library urningsaps.a"
	$(CMAKE_COMMAND) -P CMakeFiles/urningsaps.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/urningsaps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/urningsaps.dir/build: urningsaps.a
.PHONY : CMakeFiles/urningsaps.dir/build

CMakeFiles/urningsaps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/urningsaps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/urningsaps.dir/clean

CMakeFiles/urningsaps.dir/depend:
	cd "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main" "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main" "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build" "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build" "/Users/bencegergely/Documents/ELTE_PHD/Articles/Urnings/Journal of Statistical Software/UrningsAPS/main/build/CMakeFiles/urningsaps.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/urningsaps.dir/depend

