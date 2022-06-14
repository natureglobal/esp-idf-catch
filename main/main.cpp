#define CATCH_CONFIG_RUNNER
#define CATCH_CONFIG_NO_POSIX_SIGNALS
#define CATCH_CONFIG_DISABLE_EXCEPTIONS
#include <catch.hpp>

extern "C" int app_main(void)
{
    int result = Catch::Session().run();
    return result;
}
