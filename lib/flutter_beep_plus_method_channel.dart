import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_beep_plus_platform_interface.dart';

/// An implementation of [FlutterBeepPlusPlatform] that uses method channels.
class MethodChannelFlutterBeepPlus extends FlutterBeepPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_beep_plus');
  @override
  Future<bool?> playSystemSound(int soundId) async {
    final response =
        await methodChannel.invokeMethod('playSysSound', {"soundId": soundId});
    return response;
  }
}
