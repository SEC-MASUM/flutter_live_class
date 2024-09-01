import 'package:flutter/material.dart';
import 'package:flutter_live_class/presentation/widgets/dashboard_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(crossAxisCount: 1, aspectRatio: 5/2),
          ],
        ),
      ),
    );
  }

  Widget _buildTabletLayout() {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getSummarySection(crossAxisCount: 2, aspectRatio: 9/5),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Scaffold(
      body: Row(
        children: [
          const NavMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _getSummarySection(crossAxisCount: 4, aspectRatio: 6/5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSummarySection({required int crossAxisCount, required double aspectRatio}) {
    return GridView(
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        // childAspectRatio: aspectRatio,
        mainAxisExtent: 180,
      ),
      children: const [
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
        DashboardCard(),
      ],
    );
  }
}
