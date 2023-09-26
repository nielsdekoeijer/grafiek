#include <boost/property_tree/ptree.hpp>

#include "draw.hpp"

namespace grafiek {
void addBackground(boost::property_tree::ptree &svg, const Color &color) {
  boost::property_tree::ptree node;
  node.put("<xmlattr>.width", "100%");
  node.put("<xmlattr>.height", "100%");
  node.put("<xmlattr>.fill", hex(color));
  svg.add_child("svg.rect", node);
}
}
