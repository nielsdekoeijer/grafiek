#include <boost/property_tree/ptree.hpp>

#include "draw.hpp"

namespace grafiek {
void addHeader(boost::property_tree::ptree &svg, const std::size_t width,
               const std::size_t height) {
  svg.put("svg.<xmlattr>.xmlns", "http://www.w3.org/2000/svg");
  svg.put("svg.<xmlattr>.width", width);
  svg.put("svg.<xmlattr>.height", height);
}
}
