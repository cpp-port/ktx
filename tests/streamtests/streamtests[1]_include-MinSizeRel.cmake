if(EXISTS "C:/main/port/graphics3d/ktx/MinSizeRel/streamtests.exe")
  if(NOT EXISTS "C:/main/port/graphics3d/ktx/tests/streamtests/streamtests[1]_tests-MinSizeRel.cmake" OR
     NOT "C:/main/port/graphics3d/ktx/tests/streamtests/streamtests[1]_tests-MinSizeRel.cmake" IS_NEWER_THAN "C:/main/port/graphics3d/ktx/MinSizeRel/streamtests.exe" OR
     NOT "C:/main/port/graphics3d/ktx/tests/streamtests/streamtests[1]_tests-MinSizeRel.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("C:/Program Files/CMake/share/cmake-3.30/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[C:/main/port/graphics3d/ktx/MinSizeRel/streamtests.exe]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[C:/main/port/graphics3d/ktx/tests/streamtests]==]
      TEST_EXTRA_ARGS [==[C:/main/port/graphics3d/ktx/KTX-Software/tests/testimages/]==]
      TEST_PROPERTIES [==[]==]
      TEST_PREFIX [==[streamtest.]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[streamtests_TESTS]==]
      CTEST_FILE [==[C:/main/port/graphics3d/ktx/tests/streamtests/streamtests[1]_tests-MinSizeRel.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[20]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("C:/main/port/graphics3d/ktx/tests/streamtests/streamtests[1]_tests-MinSizeRel.cmake")
else()
  add_test(streamtests_NOT_BUILT streamtests_NOT_BUILT)
endif()
