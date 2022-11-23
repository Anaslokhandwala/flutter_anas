
import 'flutter_anas_platform_interface.dart';

class FlutterAnas {
  Future<String?> getPlatformVersion() {
    return FlutterAnasPlatform.instance.getPlatformVersion();
  }
}
