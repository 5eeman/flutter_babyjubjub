import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_babyjubjub_method_channel.dart';

abstract class FlutterBabyjubjubPlatform extends PlatformInterface {
  /// Constructs a FlutterBabyjubjubPlatform.
  FlutterBabyjubjubPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBabyjubjubPlatform _instance = MethodChannelFlutterBabyjubjub();

  /// The default instance of [FlutterBabyjubjubPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBabyjubjub].
  static FlutterBabyjubjubPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBabyjubjubPlatform] when
  /// they register themselves.
  static set instance(FlutterBabyjubjubPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
