# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/prerak/IIIT/cg/ass1/2DGame

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prerak/IIIT/cg/ass1/2DGame/build

# Include any dependencies generated for this target.
include CMakeFiles/game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/game.dir/flags.make

CMakeFiles/game.dir/src/game.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/game.cpp.o: ../src/game.cpp
CMakeFiles/game.dir/src/game.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/game.dir/src/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/game.cpp.o -MF CMakeFiles/game.dir/src/game.cpp.o.d -o CMakeFiles/game.dir/src/game.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/game.cpp

CMakeFiles/game.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/game.cpp > CMakeFiles/game.dir/src/game.cpp.i

CMakeFiles/game.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/game.cpp -o CMakeFiles/game.dir/src/game.cpp.s

CMakeFiles/game.dir/src/main.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/game.dir/src/main.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/game.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/main.cpp.o -MF CMakeFiles/game.dir/src/main.cpp.o.d -o CMakeFiles/game.dir/src/main.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/main.cpp

CMakeFiles/game.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/main.cpp > CMakeFiles/game.dir/src/main.cpp.i

CMakeFiles/game.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/main.cpp -o CMakeFiles/game.dir/src/main.cpp.s

CMakeFiles/game.dir/src/resource_manager.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/resource_manager.cpp.o: ../src/resource_manager.cpp
CMakeFiles/game.dir/src/resource_manager.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/game.dir/src/resource_manager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/resource_manager.cpp.o -MF CMakeFiles/game.dir/src/resource_manager.cpp.o.d -o CMakeFiles/game.dir/src/resource_manager.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/resource_manager.cpp

CMakeFiles/game.dir/src/resource_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/resource_manager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/resource_manager.cpp > CMakeFiles/game.dir/src/resource_manager.cpp.i

CMakeFiles/game.dir/src/resource_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/resource_manager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/resource_manager.cpp -o CMakeFiles/game.dir/src/resource_manager.cpp.s

CMakeFiles/game.dir/src/shader.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/shader.cpp.o: ../src/shader.cpp
CMakeFiles/game.dir/src/shader.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/game.dir/src/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/shader.cpp.o -MF CMakeFiles/game.dir/src/shader.cpp.o.d -o CMakeFiles/game.dir/src/shader.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/shader.cpp

CMakeFiles/game.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/shader.cpp > CMakeFiles/game.dir/src/shader.cpp.i

CMakeFiles/game.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/shader.cpp -o CMakeFiles/game.dir/src/shader.cpp.s

CMakeFiles/game.dir/src/sprite_renderer.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/sprite_renderer.cpp.o: ../src/sprite_renderer.cpp
CMakeFiles/game.dir/src/sprite_renderer.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/game.dir/src/sprite_renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/sprite_renderer.cpp.o -MF CMakeFiles/game.dir/src/sprite_renderer.cpp.o.d -o CMakeFiles/game.dir/src/sprite_renderer.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/sprite_renderer.cpp

CMakeFiles/game.dir/src/sprite_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/sprite_renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/sprite_renderer.cpp > CMakeFiles/game.dir/src/sprite_renderer.cpp.i

CMakeFiles/game.dir/src/sprite_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/sprite_renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/sprite_renderer.cpp -o CMakeFiles/game.dir/src/sprite_renderer.cpp.s

CMakeFiles/game.dir/src/stb_image.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/stb_image.cpp.o: ../src/stb_image.cpp
CMakeFiles/game.dir/src/stb_image.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/game.dir/src/stb_image.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/stb_image.cpp.o -MF CMakeFiles/game.dir/src/stb_image.cpp.o.d -o CMakeFiles/game.dir/src/stb_image.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/stb_image.cpp

CMakeFiles/game.dir/src/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/stb_image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/stb_image.cpp > CMakeFiles/game.dir/src/stb_image.cpp.i

CMakeFiles/game.dir/src/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/stb_image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/stb_image.cpp -o CMakeFiles/game.dir/src/stb_image.cpp.s

CMakeFiles/game.dir/src/texture.cpp.o: CMakeFiles/game.dir/flags.make
CMakeFiles/game.dir/src/texture.cpp.o: ../src/texture.cpp
CMakeFiles/game.dir/src/texture.cpp.o: CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/game.dir/src/texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/game.dir/src/texture.cpp.o -MF CMakeFiles/game.dir/src/texture.cpp.o.d -o CMakeFiles/game.dir/src/texture.cpp.o -c /home/prerak/IIIT/cg/ass1/2DGame/src/texture.cpp

CMakeFiles/game.dir/src/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/src/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prerak/IIIT/cg/ass1/2DGame/src/texture.cpp > CMakeFiles/game.dir/src/texture.cpp.i

CMakeFiles/game.dir/src/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/src/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prerak/IIIT/cg/ass1/2DGame/src/texture.cpp -o CMakeFiles/game.dir/src/texture.cpp.s

# Object files for target game
game_OBJECTS = \
"CMakeFiles/game.dir/src/game.cpp.o" \
"CMakeFiles/game.dir/src/main.cpp.o" \
"CMakeFiles/game.dir/src/resource_manager.cpp.o" \
"CMakeFiles/game.dir/src/shader.cpp.o" \
"CMakeFiles/game.dir/src/sprite_renderer.cpp.o" \
"CMakeFiles/game.dir/src/stb_image.cpp.o" \
"CMakeFiles/game.dir/src/texture.cpp.o"

# External object files for target game
game_EXTERNAL_OBJECTS =

game: CMakeFiles/game.dir/src/game.cpp.o
game: CMakeFiles/game.dir/src/main.cpp.o
game: CMakeFiles/game.dir/src/resource_manager.cpp.o
game: CMakeFiles/game.dir/src/shader.cpp.o
game: CMakeFiles/game.dir/src/sprite_renderer.cpp.o
game: CMakeFiles/game.dir/src/stb_image.cpp.o
game: CMakeFiles/game.dir/src/texture.cpp.o
game: CMakeFiles/game.dir/build.make
game: libraries/glfw/src/libglfw3.a
game: libglad.a
game: /usr/lib/librt.so
game: /usr/lib/libm.so
game: CMakeFiles/game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/game.dir/build: game
.PHONY : CMakeFiles/game.dir/build

CMakeFiles/game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/game.dir/clean

CMakeFiles/game.dir/depend:
	cd /home/prerak/IIIT/cg/ass1/2DGame/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prerak/IIIT/cg/ass1/2DGame /home/prerak/IIIT/cg/ass1/2DGame /home/prerak/IIIT/cg/ass1/2DGame/build /home/prerak/IIIT/cg/ass1/2DGame/build /home/prerak/IIIT/cg/ass1/2DGame/build/CMakeFiles/game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/game.dir/depend
