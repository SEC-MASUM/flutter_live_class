import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("Products"),
            ),
            ListTile(
              title: Text("Stock"),
            ),
            ListTile(
              title: Text("Bill"),
            ),
            ListTile(
              title: Text("Setting"),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Home"),
      ),
    );
  }
}
