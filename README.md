# dart:ffi Hello World

## compile
```sh
# mac (.dylib)
g++ -dynamiclib -o shared_library/mac/libHelloWorld.dylib shared_library/src/hello_world.cpp

# Linux (.so)  if Android, have to compile for arm64 or arm
g++ -shared -o shared_library/linux/libHelloWorld.so shared_library/src/hello_world.cpp
```

## hello world
```sh
pub get
pub run ./hello_world.dart
```

## Reference
* [Sample code dart:ffi](https://github.com/dart-lang/sdk/tree/master/samples/ffi/sqlite)
* [Design and implement Dart VM FFI](https://github.com/dart-lang/sdk/issues/34452)
* [Dart VM FFI Vision](https://gist.github.com/mraleph/2582b57737711da40262fad71215d62e)
