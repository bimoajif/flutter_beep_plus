import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_beep_plus/flutter_beep_plus.dart';
import 'package:flutter_beep_plus/flutter_beep_plus_platform_interface.dart';
import 'package:flutter_beep_plus/flutter_beep_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBeepPlusPlatform
    with MockPlatformInterfaceMixin
    implements FlutterBeepPlusPlatform {
  @override
  Future<bool?> playSysSound(int soundId) => Future.value(true);

  @override
  Future<bool?> stopSysSound() => Future.value(true);
}

void main() {
  final FlutterBeepPlusPlatform initialPlatform =
      FlutterBeepPlusPlatform.instance;

  test('$MethodChannelFlutterBeepPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBeepPlus>());
  });

  test('playSysSound', () async {
    FlutterBeepPlus flutterBeepPlusPlugin = FlutterBeepPlus();
    MockFlutterBeepPlusPlatform fakePlatform = MockFlutterBeepPlusPlatform();
    FlutterBeepPlusPlatform.instance = fakePlatform;

    expect(
        await flutterBeepPlusPlugin
            .playSysSound(AndroidSoundID.TONE_CDMA_ABBR_ALERT),
        true);
  });

  test('stopSysSound', () async {
    FlutterBeepPlus flutterBeepPlusPlugin = FlutterBeepPlus();
    MockFlutterBeepPlusPlatform fakePlatform = MockFlutterBeepPlusPlatform();
    FlutterBeepPlusPlatform.instance = fakePlatform;

    expect(await flutterBeepPlusPlugin.stopSysSound(), true);
  });
}
