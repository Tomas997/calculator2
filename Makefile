# Makefile

CXX = g++  # Компилятор
CXXFLAGS = -Wall -Wextra -std=c++11  # Параметри компілятора
TARGET = calculator_app  # Назва вихідного виконуваного файлу
SOURCES = Main.cpp calculator.cpp  # Джерельні файли
OBJECTS = $(SOURCES:.cpp=.o)  # Об'єктні файли

# Ціль за замовчуванням
all: $(TARGET)

# Лінкуємо об'єктні файли для створення виконуваного файлу
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Компіліруємо джерельні файли в об'єктні файли
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Очищаємо згенеровані файли
clean:
	rm -f $(OBJECTS) $(TARGET)
