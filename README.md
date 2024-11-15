# flutter_beep_plus
A fork to [flutter_beep](https://pub.dev/packages/flutter_beep) plugin. A very lite module to play system sounds and beep for flutter apps (no sound files).

|             | Android | iOS   | Linux | macOS  | Web | Windows     |
|-------------|---------|-------|-------|--------|-----|-------------|
| **Support** | ✅ | ❌ | ❌ | ❌ | ❌ | ❌ |


# Usage
```dart
import 'package:flutter_beep/flutter_beep.dart';

final _flutterBeepPlusPlugin = FlutterBeepPlus();

ElevatedButton(
    onPressed: ()=> _flutterBeepPlusPlugin.playSysSound(AndroidSoundID.TONE_CDMA_ABBR_ALERT),
    child: Text("Beep Android Custom"), 
);
```
