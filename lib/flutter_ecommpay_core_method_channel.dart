import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ecommpay_core_platform_interface.dart';

/// An implementation of [FlutterEcommpayCorePlatform] that uses method channels.
class MethodChannelFlutterEcommpayCore extends FlutterEcommpayCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ecommpay_core');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
