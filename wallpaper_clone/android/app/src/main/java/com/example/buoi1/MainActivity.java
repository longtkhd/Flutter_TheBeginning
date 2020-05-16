package com.example.buoi1;

import android.widget.Toast;

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  // private val CHANNEL = "samples.flutter.dev/battery"

  // override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
  //   MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
  //     call, result ->
  //     // Note: this method is invoked on the main thread.
  //     // TODO
  //   }
  // }
  private static final String CHANNEL = "samples.flutter.dev/battery";
  @Override
  public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine);
     new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
        .setMethodCallHandler(
          (call, result) -> {
            // Note: this method is invoked on the main thread.
            // TODO
              Toast.makeText(this, "a", Toast.LENGTH_SHORT).show();

          }
        );
  }
}

