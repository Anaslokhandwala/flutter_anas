import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_anas_method_channel.dart';

abstract class FlutterAnasPlatform extends PlatformInterface {
  /// Constructs a FlutterAnasPlatform.
  FlutterAnasPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAnasPlatform _instance = MethodChannelFlutterAnas();

  /// The default instance of [FlutterAnasPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAnas].
  static FlutterAnasPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAnasPlatform] when
  /// they register themselves.
  static set instance(FlutterAnasPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
