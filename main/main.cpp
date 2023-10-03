#include <catch.hpp>

TEST_CASE("first test") {
    REQUIRE(true);
}

extern "C" int app_main(void) {
    int result = Catch::Session().run();
    return result;
}
