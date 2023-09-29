# tests/CMakeLists.txt

# Include Google Test
find_package(GTest REQUIRED)

# Add test executable
add_executable(test_some_feature test_some_feature.cpp)

# Link against your library and Google Test
target_link_libraries(test_some_feature PRIVATE urningsaps GTest::GTest GTest::Main)

# Register the test
include(GoogleTest)
gtest_discover_tests(test_some_feature)
