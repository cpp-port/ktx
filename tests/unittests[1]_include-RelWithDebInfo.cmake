if(EXISTS "C:/main/port/graphics3d/ktx/RelWithDebInfo/unittests.exe")
  if(NOT EXISTS "C:/main/port/graphics3d/ktx/tests/unittests[1]_tests-RelWithDebInfo.cmake" OR
     NOT "C:/main/port/graphics3d/ktx/tests/unittests[1]_tests-RelWithDebInfo.cmake" IS_NEWER_THAN "C:/main/port/graphics3d/ktx/RelWithDebInfo/unittests.exe" OR
     NOT "C:/main/port/graphics3d/ktx/tests/unittests[1]_tests-RelWithDebInfo.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("C:/Program Files/CMake/share/cmake-3.23/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[C:/main/port/graphics3d/ktx/RelWithDebInfo/unittests.exe]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[C:/main/port/graphics3d/ktx/tests]==]
      TEST_EXTRA_ARGS [==[]==]
      TEST_PROPERTIES [==[]==]
      TEST_PREFIX [==[unittest.]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[unittests_TESTS]==]
      CTEST_FILE [==[C:/main/port/graphics3d/ktx/tests/unittests[1]_tests-RelWithDebInfo.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[20]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("C:/main/port/graphics3d/ktx/tests/unittests[1]_tests-RelWithDebInfo.cmake")
else()
  add_test(unittests_NOT_BUILT unittests_NOT_BUILT)
endif()
