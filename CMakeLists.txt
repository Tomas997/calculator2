# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)  # Мінімальна версія CMake
project(CalculatorApp)  # Назва проекту

set(CMAKE_CXX_STANDARD 11)  # Встановлюємо стандарт C++

# Створюємо виконуваний файл з джерельних файлів
add_executable(calculator_app Main.cpp calculator.cpp)
