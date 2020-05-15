# SDL2 built with [Bazel](https://bazel.build)

:warning: This project is a work in progress :warning:

Your experience may vary. Contributions are welcome!

## Getting Started

Add bazelregistry/sdl2 repository to your bazel WORKSPACE

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazelregistry_sdl2",
    strip_prefix = "",
    urls = ["https://github.com/bazelregistry/sdl2/archive/a835cbee53575237f2e32a51c7a8f288c059d9ac.zip"],
    # sha256 = "",
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
@bazelregistry_sdl2//::SDL2.dll
```
