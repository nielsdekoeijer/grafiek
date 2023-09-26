#include <boost/property_tree/ptree.hpp>

#include "draw.hpp"

namespace grafiek {
void addSize(boost::property_tree::ptree &svg, const std::size_t x, const std::size_t y, const std::size_t width,
               const std::size_t height) {
  svg.put("<xmlattr>.x", x);
  svg.put("<xmlattr>.y", y);
  svg.put("<xmlattr>.width", width);
  svg.put("<xmlattr>.height", height);
}
}
