import 'package:flutter/material.dart';
import 'package:flutter_live_class/presentation/widgets/nav_menu.dart';
import 'package:flutter_live_class/presentation/widgets/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      drawer: const NavMenu(),
      body: const Center(
        child: Text("Hello world from mobile"),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return const Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
            child: Center(
              child: Text("Tablet"),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return const Scaffold(
      body: Row(
        children: [
          NavMenu(),
          Expanded(
            child: Center(
              child: Text("Desktop"),
            ),
          )
        ],
      ),
    );
  }
}
