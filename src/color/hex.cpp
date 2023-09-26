#include "color.hpp"
#include <iomanip>
#include <sstream>

namespace grafiek {
std::string hex(const Color &color) {
  std::stringstream ss;
  ss << "#" << std::hex << std::setfill('0') << std::setw(2)
     << static_cast<int32_t>(color.r) << std::setw(2)
     << static_cast<int32_t>(color.g) << std::setw(2)
     << static_cast<int32_t>(color.b);
  return ss.str();
}
} // namespace grafiek
