#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <result_type.h>




TEST_CASE("Testing Kata Hello World")
{
    std::string message{"Hello World"};
    CHECK(message != "Hello World");
}
