cmake_minimum_required(VERSION 2.8.8 FATAL_ERROR)

#set(CMAKE_VERBOSE_MAKEFILE ON) 

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMakeModules/")
message(STATUS "CMAKE_MODULE_PATH: " ${CMAKE_MODULE_PATH}) 
project(sun_correlator)

# Add the executable
add_executable(correlator_newsuncalib src/correlator_newsuncalib.cpp)
add_executable(backcorrelator_newsuncalib src/backcorrelator_newsuncalib.cpp)


# Required packages
find_package(ROOT)
 
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${ROOT_INCLUDE_DIRS})
target_link_libraries(correlator_newsuncalib ${ROOT_LIBRARIES}) 
target_link_libraries(backcorrelator_newsuncalib ${ROOT_LIBRARIES}) 

#find_package(Boost REQUIRED system filesystem serialization)
#include_directories(${Boost_INCLUDE_DIRS})
#target_link_libraries(rprocess ${Boost_LIBRARIES}) 


# enable warnings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-reorder -Wno-unused-variable -Wno-unused-parameter")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")

# enable C++11
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# Enable floating point exception handling 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fnon-call-exceptions")

# generate debugging symbols for release and debug
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")

# optimize compilation 
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")

# require c++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# the compiler flags
get_directory_property(OUT_VAR LINK_DIRECTORIES) 
message(STATUS "")
message(STATUS "")
message(STATUS "Configuration options:")
message(STATUS "")
message(STATUS "              CMAKE_CXX_FLAGS: " ${CMAKE_CXX_FLAGS})
message(STATUS "         CMAKE_CXX_LINK_FLAGS: " ${CMAKE_CXX_LINK_FLAGS})
message(STATUS "        CMAKE_CXX_FLAGS_DEBUG: " ${CMAKE_CXX_FLAGS_DEBUG})
message(STATUS "      CMAKE_CXX_FLAGS_RELEASE: " ${CMAKE_CXX_FLAGS_RELEASE})
message(STATUS "             LINK_DIRECTORIES: " ${OUT_VAR})
message(STATUS "             BOOST_DIRECTORIES: " ${Boost_LIBRARIES})

message(STATUS "")
message(STATUS "")

# Add subdirectories


