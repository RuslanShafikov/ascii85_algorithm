cmake_minimum_required(VERSION 3.30)
project(ASCII85)

set(CMAKE_CXX_STANDARD 20)

# Включение поддержки тестов
enable_testing()

# Поиск GTest
find_package(GTest REQUIRED)

# Основной исполняемый файл (ascii85)
add_executable(ascii85 main.cpp coder.cpp)
target_include_directories(ascii85 PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

# Установка бинарника в /usr/local/bin
install(TARGETS ascii85 RUNTIME DESTINATION bin)

# Тесты
add_executable(tests
        coder.cpp
        test/main_test.cpp
)

# Линковка GTest
target_link_libraries(tests PRIVATE GTest::GTest GTest::Main)

# Добавление теста в CTest
add_test(NAME MyTest COMMAND tests)
