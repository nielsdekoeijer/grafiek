#include <algorithm>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/xml_parser.hpp>
#include <cstdlib>
#include <string>
#include <variant>

#include <iostream>

#include "../canvas/canvas.hpp"
#include "../draw/draw.hpp"
#include "../element/square.hpp"
#include "../helper/normalize.hpp"
#include "../helper/overload.hpp"

namespace grafiek {

void draw(const std::string &path, const Canvas &canvas) {
  boost::property_tree::ptree root;
  addHeader(root, canvas.width, canvas.height);
  addBackground(root, canvas.color);

  for (const auto &element : canvas.elements) {
    std::visit(
        Overload{
            [&](const auto &el) { addElement(root, el); },
        },
        element);
  }

  /* finalize */
  boost::property_tree::xml_writer_settings<std::string> settings('\t', 1);
  boost::property_tree::write_xml(path, root, std::locale(), settings);
}
} // namespace grafiek
