# OpenSSL-Apple

![iOS support](https://img.shields.io/badge/iOS-12+-blue.svg)
![macOS support](https://img.shields.io/badge/macOS-10.14+-blue.svg)
![macOS Catalyst support](https://img.shields.io/badge/macOS%20Catalyst-10.14+-blue.svg)
![watchOS support](https://img.shields.io/badge/watchOS-4.0+-blue.svg)
![tvOS support](https://img.shields.io/badge/tvOS-12+-blue.svg)
![OpenSSL version](https://img.shields.io/badge/OpenSSL-3.2.0-green.svg)
[![license](https://img.shields.io/badge/license-Apache%202.0-lightgrey.svg)](LICENSE)

This is a fork of the popular work by [Felix Schulze](https://github.com/x2on), that is a set of scripts for using self-compiled builds of the OpenSSL library on the iPhone and the Apple TV.

However, this repository focuses more on framework-based setups and also adds macOS and watchOS support.

# Compile library

Compile OpenSSL 3.2.0 for all targets:

```
./build-libssl.sh --version=3.2.0
```

Compile OpenSSL 3.2.0 for specific targets:

```
./build-libssl.sh --version=3.2.0 --targets="ios64-cross-arm64 macos64-x86_64 macos64-arm64"
```

For all options see:

```
./build-libssl.sh --help
```

# Generate frameworks

Generate dynamically linked frameworks and a compound XCFramework:

```
./create-openssl-framework.sh
```

# Original project

* <https://github.com/x2on/OpenSSL-for-iPhone>

# Acknowledgements

This product includes software developed by the OpenSSL Project for use in the OpenSSL Toolkit. (<https://www.openssl.org/>)
