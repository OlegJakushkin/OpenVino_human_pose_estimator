# Copyright (C) 2018-2019 Intel Corporation
# SPDX-License-Identifier: Apache-2.0
#
cmake_minimum_required(VERSION 3.7)

project(IsolatedHPE CXX)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if (${CMAKE_CXX_COMPILER_ID} STREQUAL GNU)
  set (CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")
endif()

if(CMAKE_SYSTEM_PROCESSOR STREQUAL "armv7l")
  set (ARCH armv7l)
elseif("${CMAKE_SIZEOF_VOID_P}" EQUAL "8")
  set (ARCH intel64)
else()
  set (ARCH ia32)
endif()


set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror") #treating warnings as errors
if (APPLE)
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-error=unused-command-line-argument")
elseif(UNIX)
  set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wuninitialized -Winit-self")
  if(NOT ${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wmaybe-uninitialized")
  endif()
endif()

set (GFLAGS_IS_SUBPROJECT TRUE)
set (HAVE_SYS_STAT_H 1)
set (HAVE_INTTYPES_H 1)

add_subdirectory(thirdparty/gflags)

if (${CMAKE_CXX_COMPILER_ID} STREQUAL GNU)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
endif()

include_directories (
        ${CMAKE_CURRENT_SOURCE_DIR}/common
        ${CMAKE_CURRENT_SOURCE_DIR}/common/format_reader
)
add_subdirectory(common/format_reader)

# samples build can be switched off during whole IE build
find_package(InferenceEngine 1.6 REQUIRED)

set(TARGET_NAME "human_pose_estimation_demo")

# Find OpenCV components if exist
find_package(OpenCV COMPONENTS highgui REQUIRED PATHS ${OpenCV_DIR} NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH )
message(${OpenCV_INCLUDE_DIRS})
set(SOURCES include/human_pose.hpp
            include/human_pose_estimation_demo.hpp
            include/human_pose_estimator.hpp
            include/peak.hpp
            include/render_human_pose.hpp
            src/human_pose.cpp
            src/human_pose_estimator.cpp
            src/peak.cpp
            src/render_human_pose.cpp
            main.cpp)

add_executable(${TARGET_NAME} ${SOURCES})

link_directories(${LIB_FOLDER})

set_target_properties(${TARGET_NAME} PROPERTIES "CMAKE_CXX_FLAGS" "${CMAKE_CXX_FLAGS} -fPIE"
  COMPILE_PDB_NAME ${TARGET_NAME})

target_include_directories(${TARGET_NAME} PUBLIC "${OpenCV_INCLUDE_DIRS}" "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>")
target_link_libraries(${TARGET_NAME} ${InferenceEngine_LIBRARIES} ${OpenCV_LIBS} gflags m)

if(UNIX)
  target_link_libraries(${TARGET_NAME} ${LIB_DL} pthread)
endif()
