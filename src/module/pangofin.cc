#include "pangofin.hpp"
#include <memory>
#include <spdlog/spdlog.h>

namespace Pangofin {
int times(int a, int b) {
  static auto logger = spdlog::stdout_color_mt("times_logger");
  logger->debug("times called ~ ({}, {})", a, b);
  int result = a * b;
  logger->debug("Result: {}", result);
  return result;
  }
} // namespace Pangofin
