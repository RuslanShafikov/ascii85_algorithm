#include "coder.h"

std::string encode(std::string& input) {
    std::vector<uint8_t> bytes(input.begin(), input.end());
    size_t original_size = bytes.size();
    size_t pad = (4 - (original_size % 4)) % 4;
    for (size_t i = 0; i < pad; ++i) bytes.push_back(0x00);

    std::string ans;

    for (size_t i = 0; i < bytes.size(); i += 4) {
        uint32_t num =
            (bytes[i] << 24) |
            (bytes[i+1] << 16) |
            (bytes[i+2] << 8) |
            bytes[i+3];

        if (num == 0 && pad == 0 && i + 4 <= original_size) {
            ans += 'z';
            continue;
        }

        char chars[5];
        for (int j = 4; j >= 0; --j) {
            chars[j] = static_cast<char>(num % 85 + 33);
            num /= 85;
        }

        bool is_full_chunk = (i + 4 <= bytes.size() - pad);
        size_t chars_to_output = is_full_chunk ? 5 : 5 - pad;
        ans += std::string(chars, chars_to_output);
    }

    return ans;
}


std::string decode(const std::string& input) {
    std::string output;
    size_t i = 0;

    while (i < input.size()) {
        if (input[i] == 'z') {
            output.append(4, '\0');
            ++i;
            continue;
        }

        unsigned char group[5] = {84, 84, 84, 84, 84};
        int count = 0;

        while (count < 5 && i < input.size() && input[i] != 'z') {
            char c = input[i];
            if (c < 33 || c > 117) {
                std::cerr<<c<<std::endl;
                throw std::runtime_error("Ascii85 doesnt have this symbol");
            }
            group[count++] = c - 33;
            ++i;
        }

        uint32_t value = 0;
        for (int j = 0; j < 5; ++j) {
            value = value * 85 + group[j];
        }

        char decoded[4];
        for (int j = 3; j >= 0; --j) {
            decoded[j] = static_cast<char>(value & 0xFF);
            value >>= 8;
        }

        int bytes_to_output = (count < 5) ? count - 1 : 4;
        output += std::string(decoded, bytes_to_output);
    }

    return output;
}

