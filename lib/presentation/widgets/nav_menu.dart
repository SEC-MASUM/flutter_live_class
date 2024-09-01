import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("Home"),
              tileColor: Colors.black12,
            ),
            ListTile(
              title: Text("Products"),
              tileColor: Colors.pink,
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
    );
  }
}
