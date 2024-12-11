# Compiler and flags
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra

# Executable name
TARGET = deribit_client

# Source files
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

# Build the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS) -lcurl  # Link libcurl at the end

# Compile the source files into object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean up compiled files
clean:
	rm -f $(TARGET) $(OBJS)

