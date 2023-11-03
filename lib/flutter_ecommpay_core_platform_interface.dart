import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ecommpay_core_method_channel.dart';

abstract class FlutterEcommpayCorePlatform extends PlatformInterface {
  /// Constructs a FlutterEcommpayCorePlatform.
  FlutterEcommpayCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterEcommpayCorePlatform _instance = MethodChannelFlutterEcommpayCore();

  /// The default instance of [FlutterEcommpayCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterEcommpayCore].
  static FlutterEcommpayCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterEcommpayCorePlatform] when
  /// they register themselves.
  static set instance(FlutterEcommpayCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
