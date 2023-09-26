#pragma once
#include <cstdint>
#include <string>

namespace grafiek {
struct Color {
  uint8_t r = 0;
  uint8_t g = 0;
  uint8_t b = 0;
  uint8_t a = 0;
};

constexpr static inline Color Red = Color{
    .r = 255,
    .g = 0,
    .b = 0,
    .a = 0,
};

constexpr static inline Color Pink = Color{
    .r = 255,
    .g = 15,
    .b = 192,
    .a = 0,
};


constexpr static inline Color Black = Color{
    .r = 0,
    .g = 0,
    .b = 0,
    .a = 0,
};

constexpr static inline Color Blue = Color{
    .r = 0,
    .g = 0,
    .b = 255,
    .a = 0,
};

constexpr static inline Color Green = Color{
    .r = 0,
    .g = 0,
    .b = 255,
    .a = 0,
};

constexpr static inline Color DarkGray = Color{
    .r = 190,
    .g = 190,
    .b = 190,
    .a = 0,
};

constexpr static inline Color Gray = Color{
    .r = 240,
    .g = 240,
    .b = 240,
    .a = 0,
};

constexpr static inline Color White = Color{
    .r = 255,
    .g = 255,
    .b = 255,
    .a = 0,
};

std::string hex(const Color &);
} // namespace grafiek
