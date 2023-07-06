#include <utility>

constexpr std::initializer_list<uint8_t> display_order = {
    17, 1,  2,  3,  4,   // A B C D E | r x x x x
    5,  6,  7,  8,  9,   // F G H I J
    16, 11, 12, 13, 14,  // K L M N O
    15, 18, 24, 10, 0,   // P Q R S T | x x x x a
    21, 19, 20, 22, 23   // U V W X Y
};

constexpr std::initializer_list<int8_t> display_rotation = {
    0, 0, 0, 0, 2,   // A B C D E
    0, 0, 0, 0, -1,  // F G H I J
    0, 0, 0, 0, 2,   // K L M N O
    0, 0, 0, 0, 2,   // P Q R S T
    0, 0, 0, 0, 2    // U V W X Y
};
