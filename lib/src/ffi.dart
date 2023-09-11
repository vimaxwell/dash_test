import 'dart:ffi';
import 'dart:io';
import 'package:dash/src/bridge_generated.dart';

Dash? _lib;

// Dash createWrapper(ExternalLibrary lib) {
//   _wrapper ??= createWrapperImpl(lib);
//   return _wrapper!;
// }

Dash createLib() {
  _lib ??= DashImpl(createLibraryImpl());
  return _lib!;
}

DynamicLibrary createLibraryImpl() {
  const base = 'dash';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}
