project(graphics3d-KTX)


cmake_minimum_required(VERSION 3.22)
#
#

set(GRAPHICS3D_KTX_SOURCE ${CMAKE_CURRENT_SOURCE_DIR})


if(${WIN32})


set(EXECUTABLE_OUTPUT_PATH ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)


set(_CMAKE_RUNTIME_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)
set(_CMAKE_LIBRARY_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)
set(_CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)

elseif(${LINUX} OR ${__BSD__})


   set(EXECUTABLE_OUTPUT_PATH ${GRAPHICS3D_KTX_SOURCE}/../../../cmake-build-debug/output)


   set(_CMAKE_RUNTIME_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../cmake-build-debug/output)
   set(_CMAKE_LIBRARY_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../cmake-build-debug/output)
   set(_CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../cmake-build-debug/output)



endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${_CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${_CMAKE_LIBRARY_OUTPUT_DIRECTORY})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${_CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

set(KTX_FEATURE_TESTS OFF CACHE BOOL "Disable KTX tests" FORCE)

add_subdirectory("KTX-Software")




list(APPEND target_items
    ktx
    ktx_read
    #ktx2check
    #ktx2ktx2
    #ktxinfo
    #ktxsc
    #ktxtools
    #streamtests
    #streamtests
    #toktx
    #transcodetests
    #unittests
    #fmt
    #gtest
    #imageio
    obj_basisu_cbind
    objUtil
)



foreach(target_item ${target_items})

    set_target_properties(${target_item} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${_CMAKE_RUNTIME_OUTPUT_DIRECTORY}
    LIBRARY_OUTPUT_DIRECTORY ${_CMAKE_LIBRARY_OUTPUT_DIRECTORY}
    ARCHIVE_OUTPUT_DIRECTORY ${_CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
    )

    #set_property(TARGET ${target_item}  PROPERTY CXX_STANDARD 17)
    #set_property(TARGET ${target_item}  PROPERTY CXX_STANDARD_REQUIRED ON)

endforeach()


