set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_SOURCE_DIR}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_SOURCE_DIR}/bin")
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
set(CMAKE_DEBUG_POSTFIX "_d")
set(CMAKE_RELWITHDEBINFO_POSTFIX "_rd")
set(CMAKE_MINSIZEREL_POSTFIX "_ms")

if (MSVC)
    set(CMAKE_USE_RELATIVE_PATHS "1")
    # Set compiler flags for "release"
    set(CMAKE_CXX_FLAGS_RELEASE "/MD /MP /Ox /Ob2 /Oi /Ot /fp:fast /D NDEBUG /openmp") 
	SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MP") 
endif (MSVC)

if (UNIX OR MINGW)
    set(CMAKE_USE_RELATIVE_PATHS "1")
    # Set compiler flags for "release"
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG -fopenmp") 
endif (UNIX OR MINGW)

if(APPLE)
	set(CMAKE_MACOSX_RPATH 1)
endif()

add_definitions(-D_CRT_SECURE_NO_DEPRECATE)

set(CMAKE_CXX_STANDARD 11)
