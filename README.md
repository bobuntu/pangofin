# Pangofin (C++ seed project)
A modern seed for C++ project, built on Cmake, Catch2.

### Features

- **ISO/IEC 14882** standard, revision 17
- (Optional) `Catch2` testing automated with CMake/Ctest
- Includes template for BDD style testing

### How does it work?

```bash
# Clone the repo
git clone https://github.com/ceable/pangofin.git
cd pangofin
mkdir build && cd build
# Optionally build testing
cmake -DBUILD_TESTING=ON -G Ninja ..
# Run initial tests
ctest -C Debug -T test --output-on-failure
```
After a successful build, the main binary is `RUN` and can be accessed by running `./build/src/RUN`.

>Note: Ninja is optional too 🥷


[![Travis](https://img.shields.io/travis/ceable/pangofin.svg?style=flat-square)](https://github.com/ceable/pangofin)
[![license](https://img.shields.io/github/license/ceable/pangofin.svg?style=flat-square)](https://github.com/ceable/pangofin/blob/master/LICENSE)


### How to customize it?

After you have cloned the repo, head over to the specific `CMakeLists.txt` file you wish to customize as shown in this folder structure:
```bash
.
├── CMakeLists.txt # Add new libraries and tests
├── inc
│   └── seed.hh
├── LICENSE
├── README.md
├── src
│   ├── CMakeLists.txt # Add files to compile main binary
│   ├── ...
│
├── test
│   ├── CMakeLists.txt # Configure test binaries
│   ├── ...
```

### Test matrix

| Distribution | Compiler | `CMAKE_BUILD_TYPE` |  Status  |
|--------------|----------|--------------------|----------|
| Ubuntu 20.04 | `g++-7`| `Debug`             | ![Status](https://travis-matrix-badges.herokuapp.com/repos/ceable/pangofin/branches/master/1) |

### Support
If you like this template, I'd appreciate if you consider becoming my patron and connect/engage with my other content.

[**Patreon**'s page](https://www.patreon.com/bobuntu)
