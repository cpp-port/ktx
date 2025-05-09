project(graphics3d-KTX)


cmake_minimum_required(VERSION 3.22)


set(GRAPHICS3D_KTX_SOURCE ${CMAKE_CURRENT_SOURCE_DIR})


set(EXECUTABLE_OUTPUT_PATH ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)


set(_CMAKE_RUNTIME_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)
set(_CMAKE_LIBRARY_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)
set(_CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${GRAPHICS3D_KTX_SOURCE}/../../../time-windows/x64)


set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${_CMAKE_RUNTIME_OUTPUT_DIRECTORY})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${_CMAKE_LIBRARY_OUTPUT_DIRECTORY})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${_CMAKE_ARCHIVE_OUTPUT_DIRECTORY})


add_subdirectory("KTX-Software")


list(APPEND target_items
    ktx
    ktx_read
    ktx2check
    ktx2ktx2
    ktxinfo
    ktxsc
    ktxtools
    streamtests
    streamtests
    toktx
    transcodetests
    unittests
    fmt
    gtest
    imageio
    obj_basisu_cbind
    objUtil
)



foreach(target_item ${target_items})

    set_target_properties(${target_item} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${_CMAKE_RUNTIME_OUTPUT_DIRECTORY}
    LIBRARY_OUTPUT_DIRECTORY ${_CMAKE_LIBRARY_OUTPUT_DIRECTORY}
    ARCHIVE_OUTPUT_DIRECTORY ${_CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
    )

endforeach()



