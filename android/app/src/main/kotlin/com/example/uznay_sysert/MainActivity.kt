package com.example.uznay_sysert

import io.flutter.embedding.android.FlutterActivity
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    MapKitFactory.setApiKey("92e9100b-adc2-4276-95d6-c5756940503d")
    super.configureFlutterEngine(flutterEngine)
  }
}
