import 'package:flutter/material.dart';
import 'package:sample_app_data_persistence/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
              leading: const Icon(Icons.home_sharp),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routerName);
              }),
          ListTile(
              leading: const Icon(Icons.newspaper_outlined),
              title: const Text('News'),
              onTap: () {
                //Navigator.pushReplacementNamed(context, HomeScreen.routerName);
              }),
          ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
              }),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/drawer-header.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
