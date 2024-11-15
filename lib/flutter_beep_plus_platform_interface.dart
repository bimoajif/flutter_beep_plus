import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_beep_plus_method_channel.dart';

abstract class FlutterBeepPlusPlatform extends PlatformInterface {
  /// Constructs a FlutterBeepPlusPlatform.
  FlutterBeepPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBeepPlusPlatform _instance = MethodChannelFlutterBeepPlus();

  /// The default instance of [FlutterBeepPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBeepPlus].
  static FlutterBeepPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBeepPlusPlatform] when
  /// they register themselves.
  static set instance(FlutterBeepPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> playSystemSound(int soundId) {
    throw UnimplementedError('playSystemSound() has not been implemented.');
  }
}
