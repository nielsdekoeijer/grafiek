#include <boost/property_tree/ptree.hpp>

#include "draw.hpp"
#include "../element/square.hpp"

namespace grafiek {
void addElement(boost::property_tree::ptree &svg, const Square& element) {
    boost::property_tree::ptree node;
    node.put("<xmlattr>.width", element.size);
    node.put("<xmlattr>.height", element.size);
    node.put("<xmlattr>.x", element.x);
    node.put("<xmlattr>.y", element.y);
    node.put("<xmlattr>.fill", hex(element.color));
    svg.add_child("svg.node", node);
}
}
