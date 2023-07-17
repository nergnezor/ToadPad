#include <utility>

namespace Config {
constexpr std::initializer_list<uint8_t> display_order = {
    17, 1,  2,  3,  4,   //
    5,  6,  7,  8,  9,   //
    16, 11, 12, 13, 14,  //
    15, 18, 24, 10, 0,   //
    21, 19, 20, 22, 23,  //
};

constexpr std::initializer_list<int8_t> display_rotation = {
    0, 0, 0, 0, 2,   // A B C D E
    0, 0, 0, 0, -1,  // F G H I J
    0, 0, 0, 0, 2,   // K L M N O
    0, 0, 0, 0, 2,   // P Q R S T
    0, 0, 0, 0, 2    // U V W X Y
};

constexpr int display_pixel_width = 8;
constexpr int display_pixel_height = 8;
constexpr bool rotate_vertical = true;
};  // namespace Config