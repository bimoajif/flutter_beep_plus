import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_beep_plus/flutter_beep_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterBeepPlusPlugin = FlutterBeepPlus();

  List<AndroidSoundID> sounds = [];
  AndroidSoundID selectedId = AndroidSoundID.TONE_CDMA_ABBR_ALERT;

  @override
  void initState() {
    sounds = AndroidSoundID.values;
    super.initState();
  }

  Future<void> playSound(AndroidSoundID soundId) async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      await _flutterBeepPlusPlugin.playSysSound(soundId);
    } on PlatformException {
      'Failed to play system sound.';
    }
  }

  Future<void> stopSound() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      await _flutterBeepPlusPlugin.stopSysSound();
    } on PlatformException {
      'Failed to play system sound.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Beep Plus Example'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Select Sound ID:"),
            DropdownButton(
                isExpanded: true,
                value: selectedId,
                items: sounds.map((v) {
                  return DropdownMenuItem(
                    value: v,
                    child: Text(v.name.toString()),
                  );
                }).toList(),
                onChanged: (v) {
                  setState(() {
                    selectedId = v!;
                  });
                }),
            ElevatedButton(
              onPressed: () {
                playSound(selectedId);
              },
              child: const Text("Play Sound"),
            ),
            ElevatedButton(
              onPressed: () {
                stopSound();
              },
              child: const Text("Stop Sound"),
            )
          ],
        ),
      ),
    );
  }
}
