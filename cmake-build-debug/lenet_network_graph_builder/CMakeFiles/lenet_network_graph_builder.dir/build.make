# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /opt/intel/openvino/deployment_tools/inference_engine/samples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug

# Include any dependencies generated for this target.
include lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/depend.make

# Include the progress variables for this target.
include lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/progress.make

# Include the compile flags for this target's objects.
include lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/flags.make

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/flags.make
lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o: ../lenet_network_graph_builder/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o"
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o -c /opt/intel/openvino/deployment_tools/inference_engine/samples/lenet_network_graph_builder/main.cpp

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lenet_network_graph_builder.dir/main.cpp.i"
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/intel/openvino/deployment_tools/inference_engine/samples/lenet_network_graph_builder/main.cpp > CMakeFiles/lenet_network_graph_builder.dir/main.cpp.i

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lenet_network_graph_builder.dir/main.cpp.s"
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/intel/openvino/deployment_tools/inference_engine/samples/lenet_network_graph_builder/main.cpp -o CMakeFiles/lenet_network_graph_builder.dir/main.cpp.s

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.requires:

.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.requires

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.provides: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.requires
	$(MAKE) -f lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/build.make lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.provides.build
.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.provides

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.provides.build: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o


# Object files for target lenet_network_graph_builder
lenet_network_graph_builder_OBJECTS = \
"CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o"

# External object files for target lenet_network_graph_builder
lenet_network_graph_builder_EXTERNAL_OBJECTS =

armv7l/Debug/lenet_network_graph_builder: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o
armv7l/Debug/lenet_network_graph_builder: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/build.make
armv7l/Debug/lenet_network_graph_builder: /opt/intel/openvino/deployment_tools/inference_engine/lib/armv7l/libinference_engine.so
armv7l/Debug/lenet_network_graph_builder: armv7l/Debug/lib/libgflags_nothreads.a
armv7l/Debug/lenet_network_graph_builder: armv7l/Debug/lib/libformat_reader.so
armv7l/Debug/lenet_network_graph_builder: /usr/lib/arm-linux-gnueabihf/libopencv_imgproc.so.2.4.9
armv7l/Debug/lenet_network_graph_builder: /usr/lib/arm-linux-gnueabihf/libopencv_core.so.2.4.9
armv7l/Debug/lenet_network_graph_builder: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../armv7l/Debug/lenet_network_graph_builder"
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lenet_network_graph_builder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/build: armv7l/Debug/lenet_network_graph_builder

.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/build

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/requires: lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/main.cpp.o.requires

.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/requires

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/clean:
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder && $(CMAKE_COMMAND) -P CMakeFiles/lenet_network_graph_builder.dir/cmake_clean.cmake
.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/clean

lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/depend:
	cd /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/intel/openvino/deployment_tools/inference_engine/samples /opt/intel/openvino/deployment_tools/inference_engine/samples/lenet_network_graph_builder /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder /opt/intel/openvino/deployment_tools/inference_engine/samples/cmake-build-debug/lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lenet_network_graph_builder/CMakeFiles/lenet_network_graph_builder.dir/depend
