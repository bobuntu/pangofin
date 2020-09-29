#include <catch2/catch.hpp>

#include "soda.hh"

TEST_CASE("Soda returns a string", "[soda]") {
    REQUIRE(soda() == "Hello from Soda.");
}