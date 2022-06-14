# Use Catch2 unittest framework on ESP-IDF

A template project to use Catch2 unittest framework on ESP-IDF.

## prerequisites

- curl: to download single header version of Catch2 (catch.hpp)

## build & run

For CMake build system:

```
$ idf.py build
$ idf.py flash monitor
```

For Makefile build system:

```
$ make
$ make flash monitor
```

Then, you can see test passed log in console.

```
I (460) cpu_start: Starting scheduler on PRO CPU.
I (0) cpu_start: Starting scheduler on APP CPU.
===============================================================================
All tests passed (1 assertion in 1 test case)
```

## Tested environment

- ESP-IDF v4.4.1
- ESP32-DevKitC

## Note

If you use ESP-IDF v3.x, then you may need to define the following macro to avoid a bug in gcc 5.4.

```cpp
#define CATCH_CONFIG_NO_CPP11_TO_STRING
```

## License

Licensed under either of:

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or
  http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in the
work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any
additional terms or conditions.
