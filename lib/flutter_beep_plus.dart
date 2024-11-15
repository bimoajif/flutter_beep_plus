import 'package:flutter_beep_plus/flutter_beep_plus.dart';

import 'flutter_beep_plus_platform_interface.dart';

export 'android_sound_id.dart';

class FlutterBeepPlus {
  Future<bool?> playSysSound(AndroidSoundID soundId) {
    return FlutterBeepPlusPlatform.instance.playSysSound(soundId.value);
  }

  Future<bool?> stopSysSound() {
    return FlutterBeepPlusPlatform.instance.stopSysSound();
  }
}
