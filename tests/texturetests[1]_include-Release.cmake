if(EXISTS "C:/main/port/graphics3d/ktx/Release/texturetests.exe")
  if(NOT EXISTS "C:/main/port/graphics3d/ktx/tests/texturetests[1]_tests-Release.cmake" OR
     NOT "C:/main/port/graphics3d/ktx/tests/texturetests[1]_tests-Release.cmake" IS_NEWER_THAN "C:/main/port/graphics3d/ktx/Release/texturetests.exe" OR
     NOT "C:/main/port/graphics3d/ktx/tests/texturetests[1]_tests-Release.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("C:/Program Files/CMake/share/cmake-3.23/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[C:/main/port/graphics3d/ktx/Release/texturetests.exe]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[C:/main/port/graphics3d/ktx/tests]==]
      TEST_EXTRA_ARGS [==[C:/main/port/graphics3d/ktx/KTX-Software/tests/testimages/]==]
      TEST_PROPERTIES [==[]==]
      TEST_PREFIX [==[texturetest.]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[texturetests_TESTS]==]
      CTEST_FILE [==[C:/main/port/graphics3d/ktx/tests/texturetests[1]_tests-Release.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[20]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("C:/main/port/graphics3d/ktx/tests/texturetests[1]_tests-Release.cmake")
else()
  add_test(texturetests_NOT_BUILT texturetests_NOT_BUILT)
endif()
