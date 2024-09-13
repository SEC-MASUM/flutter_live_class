import 'package:flutter/material.dart';
import 'package:flutter_live_class/screens/product_list_screen.dart';

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CRUD App",
      home: ProductListScreen(),
    );
  }
}
