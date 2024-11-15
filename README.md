# flutter_beep_plus
A very lite module to play system sounds and beep for flutter apps (no sound files)
```dart
import 'package:flutter_beep/flutter_beep.dart';

final _flutterBeepPlusPlugin = FlutterBeepPlus();

ElevatedButton(
    onPressed: ()=> _flutterBeepPlusPlugin.playSysSound(AndroidSoundID.TONE_CDMA_ABBR_ALERT),
    child: Text("Beep Android Custom"), 
);
```
