import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_anas/flutter_anas.dart';
import 'package:flutter_anas/flutter_anas_platform_interface.dart';
import 'package:flutter_anas/flutter_anas_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAnasPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAnasPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAnasPlatform initialPlatform = FlutterAnasPlatform.instance;

  test('$MethodChannelFlutterAnas is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAnas>());
  });

  test('getPlatformVersion', () async {
    FlutterAnas flutterAnasPlugin = FlutterAnas();
    MockFlutterAnasPlatform fakePlatform = MockFlutterAnasPlatform();
    FlutterAnasPlatform.instance = fakePlatform;

    expect(await flutterAnasPlugin.getPlatformVersion(), '42');
  });
}
