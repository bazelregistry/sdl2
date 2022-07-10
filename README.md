# SDL2 built with [Bazel](https://bazel.build)

:warning: This project is a work in progress :warning:

Your experience may vary. Contributions are welcome!

## Getting Started

Add bazelregistry/sdl2 repository to your bazel WORKSPACE

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "bazelregistry_sdl2",
    strip_prefix = "sdl2-c3efa24f546f0d8be97aaf1609688905e585cd69",
    urls = ["https://github.com/bazelregistry/sdl2/archive/c3efa24f546f0d8be97aaf1609688905e585cd69.zip"],
    sha256 = "735b86e808d78c3a6e7db86c4532140be4ad5d7349feea2dbfef7ea1382c31eb",
)
```

### Use as a static library

```python
cc_library(
    name = "example",
    srcs = "example.cc",
    deps = ["@bazelregistry_sdl2//:SDL2_lib"],
)
```

### Use as a shared library

There are several targets for getting a shared library of SDL2

```sh
# macOS
@bazelregistry_sdl2//:SDL2_dylib
# Linux
@bazelregistry_sdl2//:libSDL2.so
# Windows
@bazelregistry_sdl2//:SDL2.dll
```
