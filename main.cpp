#include <iostream>
#include <string>
#include "coder.h"

int main(int argc, char* argv[]) {
    std::string mode = "-e"; // По умолчанию — кодирование

    if (argc == 2) {
        std::string arg = argv[1];
        if (arg == "-e") {
            mode = "-e";
        } else if (arg == "-d") {
            mode = "-d";
        } else {
            std::cerr << "Unknown mode: " << arg << "\nUse -e to encode or -d to decode.\n";
            return 1;
        }
    } else if (argc > 2) {
        std::cerr << "Usage: ascii85 [-e | -d]\n";
        return 1;
    }

    std::string input;
    std::cout << "Enter data: ";
    if (!std::getline(std::cin, input)) {
        std::cerr << "Failed to read input.\n";
        return 1;
    }

    try {
        if (mode == "-e") {
            std::cout << encode(input) << std::endl;
        } else {
            std::cout << decode(input) << std::endl;
        }
    } catch (const std::exception& ex) {
        std::cerr << "Error: " << ex.what() << std::endl;
        return 1;
    }

    return 0;
}
