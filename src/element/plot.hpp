#pragma once
#include <cstdlib>
#include <vector>

#include "../color/color.hpp"

namespace grafiek {
struct Plot {
  std::size_t w = 500;
  std::size_t h = 500;
  std::size_t x = 0;
  std::size_t y = 0;
  Color bg = White;
  std::vector<float> xdata = {};
  std::vector<float> ydata = {};
  float linewidth = 1.0;
  float borderwidth = 1.0;
  std::size_t xplot = 80;
  std::size_t yplot = 50;
  std::string xlabel = "[empty]";
  std::string ylabel = "[empty]";
  std::string title = "[empty]";
  Color bgplot = Gray;
};
} // namespace grafiek
