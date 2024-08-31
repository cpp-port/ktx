if(EXISTS "C:/main/port/graphics3d/ktx/MinSizeRel/transcodetests.exe")
  if(NOT EXISTS "C:/main/port/graphics3d/ktx/tests/transcodetests/transcodetests[1]_tests-MinSizeRel.cmake" OR
     NOT "C:/main/port/graphics3d/ktx/tests/transcodetests/transcodetests[1]_tests-MinSizeRel.cmake" IS_NEWER_THAN "C:/main/port/graphics3d/ktx/MinSizeRel/transcodetests.exe" OR
     NOT "C:/main/port/graphics3d/ktx/tests/transcodetests/transcodetests[1]_tests-MinSizeRel.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("C:/Program Files/CMake/share/cmake-3.23/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[C:/main/port/graphics3d/ktx/MinSizeRel/transcodetests.exe]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[C:/main/port/graphics3d/ktx/tests/transcodetests]==]
      TEST_EXTRA_ARGS [==[C:/main/port/graphics3d/ktx/KTX-Software/tests/testimages/]==]
      TEST_PROPERTIES [==[]==]
      TEST_PREFIX [==[transcodetest.]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[transcodetests_TESTS]==]
      CTEST_FILE [==[C:/main/port/graphics3d/ktx/tests/transcodetests/transcodetests[1]_tests-MinSizeRel.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[15]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("C:/main/port/graphics3d/ktx/tests/transcodetests/transcodetests[1]_tests-MinSizeRel.cmake")
else()
  add_test(transcodetests_NOT_BUILT transcodetests_NOT_BUILT)
endif()
