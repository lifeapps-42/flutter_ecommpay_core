import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ecommpay_core/flutter_ecommpay_core.dart';
import 'package:flutter_ecommpay_core/flutter_ecommpay_core_platform_interface.dart';
import 'package:flutter_ecommpay_core/flutter_ecommpay_core_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterEcommpayCorePlatform
    with MockPlatformInterfaceMixin
    implements FlutterEcommpayCorePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterEcommpayCorePlatform initialPlatform = FlutterEcommpayCorePlatform.instance;

  test('$MethodChannelFlutterEcommpayCore is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterEcommpayCore>());
  });

  test('getPlatformVersion', () async {
    FlutterEcommpayCore flutterEcommpayCorePlugin = FlutterEcommpayCore();
    MockFlutterEcommpayCorePlatform fakePlatform = MockFlutterEcommpayCorePlatform();
    FlutterEcommpayCorePlatform.instance = fakePlatform;

    expect(await flutterEcommpayCorePlugin.getPlatformVersion(), '42');
  });
}
