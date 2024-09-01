import 'package:flutter/material.dart';
import 'package:flutter_live_class/presentation/screens/home_screen.dart';

void main() {
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
