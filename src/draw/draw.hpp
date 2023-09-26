#pragma once
#include <string>
#include <boost/property_tree/ptree.hpp>

#include "../canvas/canvas.hpp"
#include "../element/square.hpp"
#include "../element/plot.hpp"

namespace grafiek {
void draw(const std::string &path, const Canvas &canvas);
void addHeader(boost::property_tree::ptree &svg, const std::size_t width, const std::size_t height); 
void addBackground(boost::property_tree::ptree &svg, const Color &color);
void addSize(boost::property_tree::ptree &svg, const std::size_t x, const std::size_t y, const std::size_t w, const std::size_t h);
void addElement(boost::property_tree::ptree &svg, const Square& element);
void addElement(boost::property_tree::ptree &svg, const Plot& element);
}
