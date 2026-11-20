cmake_minimum_required(VERSION 3.23)
project(ktx_windows LANGUAGES C CXX)

if(MSVC AND KTX_WINDOWS_ASAN)
    if(NOT CMAKE_SIZEOF_VOID_P EQUAL 8 OR CMAKE_GENERATOR_PLATFORM STREQUAL "ARM64")
        message(FATAL_ERROR "MSVC AddressSanitizer requires the x64 KTX platform")
    endif()
    # /RTC1 and incremental linking conflict with MSVC AddressSanitizer.
    foreach(language C CXX)
        string(REPLACE "/RTC1" "" CMAKE_${language}_FLAGS_DEBUG "${CMAKE_${language}_FLAGS_DEBUG}")
    endforeach()
    add_compile_options(/fsanitize=address /Zi)
    add_link_options(/INCREMENTAL:NO)
endif()

# Keep the upstream dependency graph in CMake, as in the wrapper above us.
# Both libraries are required by that wrapper's target list.
set(KTX_FEATURE_TESTS OFF CACHE BOOL "" FORCE)
set(KTX_FEATURE_TOOLS OFF CACHE BOOL "" FORCE)
set(KTX_FEATURE_LOADTEST_APPS OFF CACHE STRING "" FORCE)
set(LIBKTX_VERSION_FULL ON CACHE BOOL "" FORCE)
set(LIBKTX_VERSION_READ_ONLY ON CACHE BOOL "" FORCE)

if(NOT KTX_OUTPUT_DIRECTORY)
    message(FATAL_ERROR "KTX_OUTPUT_DIRECTORY must name the Windows third-party output directory")
endif()
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${KTX_OUTPUT_DIRECTORY}/binary")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${KTX_OUTPUT_DIRECTORY}/library")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${KTX_OUTPUT_DIRECTORY}/library")
# The outer project already supplies a configuration-specific path.
foreach(config DEBUG RELEASE RELWITHDEBINFO MINSIZEREL)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${config} "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_${config} "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_${config} "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
endforeach()

add_subdirectory(../KTX-Software KTX-Software)
add_custom_target(ktx_wrapper DEPENDS ktx ktx_read obj_basisu_cbind objUtil)
