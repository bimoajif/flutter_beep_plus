import 'package:flutter_beep_plus/flutter_beep_plus.dart';

import 'flutter_beep_plus_platform_interface.dart';

export 'android_sound_id.dart';

class FlutterBeepPlus {
  Future<bool?> playSystemSound(AndroidSoundID soundId) {
    return FlutterBeepPlusPlatform.instance.playSystemSound(soundId.value);
  }
}
