import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'composition_root.dart';
import 'src/app.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      CompositionRoot.setup();
      runApp(const CoApp());
    },
    (error, stack) {
      dev.log(
        error.toString(),
        error: error,
        stackTrace: stack,
      );
    },
  );
}
