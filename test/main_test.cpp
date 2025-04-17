#include <gtest/gtest.h>
#include <string>
#include <vector>
#include "../coder.h"

//@note encoding tests
TEST(Ascii85Test, Encode_EmptyString_ReturnsEmpty) {
    std::string input = "";
    EXPECT_EQ(encode(input), "");
}

TEST(Ascii85Test, Encode_SingleCharacterA_Returns5l) {
    std::string input = "A";
    EXPECT_EQ(encode(input), "5l");
}

TEST(Ascii85Test, Encode_FourZeros_Returnsz) {
    std::string input(4, '\0');
    EXPECT_EQ(encode(input), "z");
}

TEST(Ascii85Test, Encode_ab_PadsAndEncodesCorrectly) {
    std::string input = "ab";
    std::string encoded = encode(input);
    EXPECT_EQ(encoded.size(), 3);
    EXPECT_EQ(decode(encoded), input);
}

//@note decoding tests
TEST(Ascii85Test, Decode_EmptyString_ReturnsEmpty) {
    std::string input = "";
    EXPECT_EQ(decode(input), "");
}

TEST(Ascii85Test, Decode_5l_ReturnsA) {
    std::string input = "5l";
    EXPECT_EQ(decode(input), "A");
}

TEST(Ascii85Test, Decode_z_ReturnsFourZeros) {
    std::string input = "z";
    std::string result(4, '\0');
    EXPECT_EQ(decode(input), result);
}

TEST(Ascii85Test, Decode_InvalidCharacter_ThrowsError) {
    std::string input = " ";
    EXPECT_THROW(decode(input), std::runtime_error);
}

TEST(Ascii85Test, Roundtrip_RandomStringMultipleOf4) {
    std::string input = "abcd1234";
    std::string encoded = encode(input);
    EXPECT_EQ(decode(encoded), input);
}

TEST(Ascii85Test, Roundtrip_RandomStringNotMultipleOf4) {
    std::string input = "hello!";
    std::string encoded = encode(input);
    EXPECT_EQ(decode(encoded), input);
}

TEST(Ascii85Test, Roundtrip_SpecialCharsAndNulls) {
    std::string input = "abc\0def\1\2";
    input.resize(8);
    std::string encoded = encode(input);
    EXPECT_EQ(decode(encoded), input);
}


TEST(Ascii85Test, EncodeDecode_Max4ByteChunk) {
    std::string input(4, 0xFF);
    std::string encoded = encode(input);
    EXPECT_EQ(decode(encoded), input);
}