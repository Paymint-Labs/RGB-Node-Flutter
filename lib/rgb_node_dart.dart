import 'dart:async';

import 'package:flutter/services.dart';

class RgbNodeDart {
  static const MethodChannel _channel =
      const MethodChannel('rgb_node_dart');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
