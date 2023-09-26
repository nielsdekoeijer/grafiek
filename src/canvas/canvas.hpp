#pragma once

#include <cstddef>
#include <string>
#include <variant>
#include <vector>

#include "../color/color.hpp"
#include "../element/element.hpp"

namespace grafiek {
struct Canvas {
  std::size_t width = 600;
  std::size_t height = 400;
  Color color = White;
  std::vector<Element> elements = {};
};

} // namespace grafiek
