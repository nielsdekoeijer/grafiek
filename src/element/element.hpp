#pragma once
#include <variant>

#include "plot.hpp"
#include "square.hpp"

namespace grafiek {
using Element = std::variant<Square, Plot>;
}
