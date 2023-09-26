#pragma once
namespace grafiek {

template <typename T> T normalize(const T value, const T a, const T b) {
  return (value - a) / (b - a);
}

template <typename T> T denormalize(const T value, const T a, const T b) {
  return value * (b - a) + a;
}
} // namespace grafiek
