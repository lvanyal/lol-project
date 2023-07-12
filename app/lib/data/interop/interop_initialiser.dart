// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js_util';

import 'package:lol_app/data/interop/js_bridge.dart';

JSLolBridge initJsInterop() {
  final dartBridge = LolBridge();
  var bridge = createDartExport(dartBridge) as JSLolBridge;
  setProperty(globalThis, '_lolBridge', bridge);
  callMethod<void>(globalThis, '_initJsInterop', [bridge]);
  return bridge;
}
