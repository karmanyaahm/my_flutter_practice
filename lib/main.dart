import 'package:flutter/material.dart';
import 'app.dart';
import 'package:wakelock/wakelock.dart';

main() {
  Wakelock.enable();
  runApp(App());
  Wakelock.enable();
}
