# SDL 2.0.9 w/ Bazel build

This project is WIP.

# macOS build:

```
bazel build //:SDL2_dylib
```

I managed to get a project that uses SDL2 to work with the SDL2.dylib built by bazel.

# windows build:
```
bazel build //:SDL2
```

The build succeeds, but I didn't try anything more than that.