import "dart:ffi" as ffi;
import 'dart:io' show Platform;

void main() {
  final libHelloWorld = _dlopenPlatformSpecific('HelloWorld', path: './shared_library/mac/');
  final helloWorld = libHelloWorld.lookupFunction<ffi.Void Function(), void Function()>("helloWorld");
  helloWorld();
}

ffi.DynamicLibrary _dlopenPlatformSpecific(String name, {String path}) {
  String fullPath = _platformPath(name, path: path);
  return ffi.DynamicLibrary.open(fullPath);
}

String _platformPath(String name, {String path = ''}) {
  if (Platform.isMacOS) return path + "lib" + name + ".dylib";
  // if (Platform.isLinux || Platform.isAndroid) return path + "lib" + name + ".so";
  // if (Platform.isWindows) return path + name + ".dll";
  throw Exception("Platform not implemented");
}
