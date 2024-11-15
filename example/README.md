# flutter_beep_plus Example

Demonstrates how to use the flutter_beep_plus plugin.
```dart
import 'package:flutter_beep/flutter_beep.dart';

final _flutterBeepPlusPlugin = FlutterBeepPlus();

ElevatedButton(
    onPressed: ()=> _flutterBeepPlusPlugin.playSysSound(AndroidSoundID.TONE_CDMA_ABBR_ALERT),
    child: Text("Beep Android Custom"), 
);
```

