import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_babyjubjub/flutter_babyjubjub.dart';
import 'package:flutter_babyjubjub/flutter_babyjubjub_platform_interface.dart';
import 'package:flutter_babyjubjub/flutter_babyjubjub_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBabyjubjubPlatform
    with MockPlatformInterfaceMixin
    implements FlutterBabyjubjubPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBabyjubjubPlatform initialPlatform = FlutterBabyjubjubPlatform.instance;

  test('$MethodChannelFlutterBabyjubjub is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBabyjubjub>());
  });

  test('getPlatformVersion', () async {
    FlutterBabyjubjub flutterBabyjubjubPlugin = FlutterBabyjubjub();
    MockFlutterBabyjubjubPlatform fakePlatform = MockFlutterBabyjubjubPlatform();
    FlutterBabyjubjubPlatform.instance = fakePlatform;

    expect(await flutterBabyjubjubPlugin.getPlatformVersion(), '42');
  });
}
