cmake_minimum_required(VERSION 3.10)
project(urningsaps)

set(CMAKE_CXX_STANDARD 14)

# Define a library
add_library(urningsaps STATIC
    src/utils.cpp
    src/item_selection.cpp
    src/model.cpp
    src/paired_update.cpp
    src/urnings_factory.cpp
)

# Include directories
target_include_directories(urningsaps PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Enable testing
include(CTest)
include(GoogleTest)

# Optionally, you can specify a library prefix to avoid naming conflicts
set_target_properties(urningsaps PROPERTIES PREFIX "")


# Add a custom target to run tests
add_custom_target(run_tests
    COMMAND ${CMAKE_CTEST_COMMAND}
    DEPENDS test_some_feature # Add more test targets as needed
)

# Optionally, you can specify installation rules
 install(TARGETS urningsaps DESTINATION lib)
 install(FILES include/utils.hpp DESTINATION include)