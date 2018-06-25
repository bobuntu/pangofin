#include <catch.hpp>
#include <spdlog/spdlog.h>
#include "module/pangofin.hpp"

TEST_CASE("Times should return the multiplication", "[times]")
{
    spdlog::set_level(spdlog::level::debug);
    REQUIRE(Pangofin::times(2, 3) == 6);
    REQUIRE(Pangofin::times(4, -1) == -4);
}
