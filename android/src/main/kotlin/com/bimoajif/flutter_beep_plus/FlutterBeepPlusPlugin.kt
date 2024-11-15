package com.bimoajif.flutter_beep_plus

import android.media.AudioManager
import android.media.ToneGenerator

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FlutterBeepPlusPlugin */
class FlutterBeepPlusPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private var toneGen: ToneGenerator  = ToneGenerator(AudioManager.STREAM_SYSTEM, 100)

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_beep_plus")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    val arg = call.arguments as? Map<*, *>
    when (call.method) {
      "playSysSound" -> {
        val soundId = arg?.get("soundId") as Int
        playSysSound(soundId)
        result.success(true)
      }
      "stopSysSound" -> {
        stopSysSound()
        result.success(true)
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun playSysSound(soundId: Int) {
    toneGen.startTone(soundId)
  }

  private fun stopSysSound() {
    toneGen.stopTone()
  }
}
