
import 'flutter_babyjubjub_platform_interface.dart';

class FlutterBabyjubjub {
  Future<String?> getPlatformVersion() {
    return FlutterBabyjubjubPlatform.instance.getPlatformVersion();
  }
}
