#pragma once
#include "../color/color.hpp"
#include <cstdlib>

namespace grafiek {
struct Square {
  std::size_t size = 100;
  std::size_t x = 0;
  std::size_t y = 0;
  Color color = Color{
      .r = 100,
      .g = 100,
      .b = 100,
      .a = 0,
  };
};
} // namespace grafiek
