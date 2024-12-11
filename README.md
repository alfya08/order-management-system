# Order-Management-System-for-Algorithmic-Trading

This project is a Low Latency Order Management System designed to trade on https://test.deribit.com/ implemented in C++.

Overview

The goal of this project is to provide an efficient order management system that interacts with the Deribit API to allow users to place, modify, and cancel orders in a fast-paced trading environment.

 Features:

- Fetch real-time market data
- Place, cancel, and modify orders
- View open positions
- View active instruments for trading
- Fetch order book information for specific instruments

Running main.cpp - Deribit API Client

This section provides instructions on how to run the `main.cpp` file, which is a command-line tool for interacting with the Deribit API.

 Prerequisites

You will need the following tools and libraries installed:

- Environment: A Linux-based system with a working `g++` compiler.
- Dependencies:
  - `g++` (GNU C++ compiler)
  - `libcurl` (for making HTTP requests)
  - `nlohmann/json` library (for JSON parsing and manipulation)

 Install Dependencies

Install g++:
```bash
sudo apt update
sudo apt install g++

Install libcurl:
sudo apt install libcurl4-openssl-dev

Install nlohmann/json: You can download and install the nlohmann/json library manually from its GitHub repository or use a package manager if available. Alternatively, you can place the nlohmann/json header file directly in the appropriate include path.

If not already installed, download it from: https://github.com/nlohmann/json.

Setup
Clone the repository (if not already done):

bash
git clone https://github.com/alfya08/order-management-system.git
cd order-management-system
Compile the code: Navigate to the directory where main.cpp is located and compile it using g++:

bash
g++ -o deribit_client main.cpp -lcurl -std=c++11
Running the Program
Obtain API Credentials
To run this program, you will need a client ID and client secret from the Deribit API. Sign up for an API key on the Deribit website and retrieve your credentials.

Run the Program
To execute the program, run:

bash
./deribit_client
Interactive Menu
Once the program runs, it will prompt you to enter your credentials and display an interactive menu where you can choose from the following options:

Place, cancel, or modify orders

Fetch order book details

View active instruments

Retrieve open positions

Follow the prompts to perform actions (e.g., entering the currency, price, amount, instrument, etc.). Type 7 to exit the program.

Notes
Ensure you have valid API credentials.

The functions getAccessToken, placeOrder, cancelOrder, modifyOrder, getOrderBook, and getOpenPositions handle various API requests.

Latency times for order operations are calculated and displayed as a performance measure.

Make sure you have network access and the correct environment setup before running the program.

Real-Time Market Data Fetcher using WebSocket
Overview
This project demonstrates how to connect to a WebSocket and subscribe to order book updates for BTC and ETH perpetual contracts from Deribit. The data is parsed and displayed in real-time using the websocketpp library and nlohmann/json for JSON parsing.

Prerequisites
Before you begin, ensure you have the following installed:

C++ Compiler: Either GCC or Clang should be installed on your system.

CMake: Required for compiling the project.

WebSocket++: A C++ WebSocket library used for connecting and handling WebSocket messages.

nlohmann/json: A popular JSON library for C++.

You can install the required libraries using package managers:

Ubuntu/Debian:

bash
sudo apt-get install cmake g++ libwebsocketpp-dev nlohmann-json3-dev
MacOS:

bash
brew install cmake boost websocketpp
Windows: Use the appropriate installer for your C++ development environment or the vcpkg tool.

Setup
Clone the repository:

bash
git clone https://github.com/alfya08/order-management-system.git
cd Order-Management-System-for-Algorithmic-Trading
Navigate to the source directory:

bash
cd src
Compile the C++ program:

Use CMake to generate build files and compile the source:

bash
mkdir build
cd build
cmake ..
make
Run the Program
To execute the program, simply run:

bash
./real-time-market-data
Running the Program
The program connects to the WebSocket server, subscribes to the BTC and ETH perpetual book channels, and listens for incoming updates. It prints the order book data in real-time to the console.

Output: The program continuously displays order book updates for the subscribed channels. The output format includes the channel name and the order book data formatted as a JSON string for readability.

Debugging and Issues
If you encounter issues:

Check if the WebSocket server URL (ws://test.deribit.com/ws/api/v2) is still valid. It might change over time.

Ensure network connectivity: The WebSocket requires a stable internet connection.

Error handling: Modify the program to include more error checks (like connection issues, JSON parsing failures, etc.).