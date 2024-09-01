import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_live_class/presentation/screens/home_screen.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isWindows || Platform.isLinux || Platform.isMacOS){
    // Must add this line.
    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      minimumSize: Size(400, 600),
      center: true,
      title: "RMA"
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  runApp(const RMAApp());
}

class RMAApp extends StatelessWidget {
  const RMAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
