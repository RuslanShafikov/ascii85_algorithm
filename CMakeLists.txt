cmake_minimum_required(VERSION 3.30)
project(ASCII85)

set(CMAKE_CXX_STANDARD 20)

enable_testing()

find_package(GTest REQUIRED)

add_executable(ascii85 main.cpp coder.cpp)
target_include_directories(ascii85 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

install(TARGETS ascii85 RUNTIME DESTINATION bin)

add_executable(tests
        coder.cpp
        test/main_test.cpp
)

target_link_libraries(tests PRIVATE GTest::GTest GTest::Main)

add_test(NAME MyTest COMMAND tests)
