import base64
import sys

# Load the font file and convert it to Base64
with open(sys.argv[1], "rb") as font_file:
    encoded_font_data = base64.b64encode(font_file.read()).decode('utf-8')

# Prepare the @font-face rule with the Base64-encoded data
font_face_rule = f"""@font-face {{ font-family: 'ComputerModern'; src: url('data:font/woff;base64,{encoded_font_data}') format('woff'); }}"""
print(font_face_rule)

# Write cpp code
cpp_code = f"""
#include <string>

#include "font.hpp"

namespace grafiek {{

const char *font::css =
    R"({font_face_rule})";
}}
"""

with open("../src/canvas/font.cpp", "w") as cpp_file:
    cpp_file.write(cpp_code)
