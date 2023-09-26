#include "canvas/canvas.hpp"
#include "draw/draw.hpp"
#include <cmath>
#include <iostream>
#include <string>

int main() {
  std::vector<grafiek::Element> elements = {};
  const std::size_t N = 1000;

  std::vector<float> xdata;
  xdata.reserve(N);
  std::vector<float> ydata;
  ydata.reserve(N);

  for (std::size_t i = 0; i < N; i++) {
    // xdata.push_back(2.0f * 3.14f * 1.0f * float(i) / float(N));
    // ydata.push_back(std::sin(xdata[i]));
    xdata.push_back(2018.00f * (1.0f - float(i) / float(N - 1)) +
                    2023.00f * (float(i) / float(N - 1)));
    ydata.push_back(0.80f * (1.0f - float(i) / float(N - 1)) +
                    0.40f * (float(i) / float(N - 1)));
  }

  elements.push_back(grafiek::Plot{
      .w = 500,
      .h = 300,
      .x = 0,
      .y = 0,
      .xdata = std::move(xdata),
      .ydata = std::move(ydata),
      .xlabel = "Time [year]",
      .ylabel = "Motivation [\% of maximum]",
      .title = "ISOBEL motivation over time",
  });

  auto canvas = grafiek::Canvas{
      .width = 500,
      .height = 300,
      .elements = std::move(elements),
  };

  grafiek::draw("output.svg", canvas);
  return 0;
}
