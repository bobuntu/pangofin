# pangofin [![Travis](https://travis-ci.org/bobuntu/pangofin.svg?branch=cxx-20)](https://github.com/ceable/pangofin)
A modern boilerplate for C++ project, built with [CMake v3.16.5](), tested with [Catch2 v2.11.1]().
String formating with the `cxx_std_20` approved [**fmt** formating library v6.1.2]().
The package manager of choice is [**Conan** v1.22.3](). Other notable libraries are [Spdlog v1.5.0]()
>Note: This repo uses the latest **LLVM/Clang** compiler **ONLY** and the `linux_x86_64` architecture.

### Acknowledgements
Thanks to `@lefticus` for the excellent [C++ Weekly vlogs]().

## Test matrix

| Distribution | Compiler   | `CMAKE_BUILD_TYPE` |  Status   |
|--------------|------------|-------------------:|-----------|
| linux_x86_64 | `clang-7++`| `Debug`            | [pending] |
| linux_x86_64 | `clang-7++`| `Release`          | [pending] |
| linux_x86_64 | `clang-7++`| `MinSizeRel`       | [pending] |
| linux_x86_64 | `clang-7++`| `RelWithDebInfo`   | [pending] |

## TODO
- Update the links on this README
- Configure Codecov and Travis CI/CD
- Add an _include_ folder
- Write tests
- Implement automated fuzzy testing

## CHANGELOG - v0.0.2
1. Simplified the `.travis.yml` file to LLVM/Clang snapshot on bionic
2. Upgraded CMake requirement to 3.15 and `CXX_STANDARD` to 17
3. Defined default project settings:
    1. Minimum build types: ref. [test matrix](#test-matrix)
    2. Using `ccache` to speed-up recompiling (esp. `Catch2`)
    3. Include (optional) link-time optimization
4. Defined default compiler warnings (LLVM/Clang only)
5. Enable code coverage and sanitizers (optional)
6. Conan as the dependency manager
7. (Optional) include precompiled headers in every build
8. Enabled testing with `Catch2`
9. Enabled fuzzy testing with `LLVMFuzzerTestOneInput()`
10. `CATCH_CONFIG_MAIN` header is compiled once on its own
11. Test reports are logged in `.xml` files
